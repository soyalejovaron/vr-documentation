const {Schema, model} = require('mongoose');
const bcrypt = require('bcryptjs');

const UserSchema = new Schema({
    CC: {
        type: String,
        required: [true, 'La cédula de ciudadanía es requerida'],
        unique: true
    },
    nombre: {
        type: String,
        required: [true, 'El nombre es requerido']
    },
    apellido: {
        type: String,
        required: [true, 'El apellido es requerido']
    },
    correo: {
        unique: true,
        type: String,
        required: [true, 'El correo es necesario']
    },
    rol: {
        unique: true,
        type: String,
        required: true,
    },
    contrasena: {
        type: String,
        required: true
    },
},  {
    timestamps: true
});
UserSchema.methods.encryptPassword = async contrasena => {
    const salt = await bcrypt.genSalt(10);
    return await bcrypt.hash(contrasena, salt);
};
UserSchema.methods.matchPassword = async function(contrasena) {
    return await bcrypt.compare(contrasena, this.contrasena);
}
module.exports = model('User', UserSchema);