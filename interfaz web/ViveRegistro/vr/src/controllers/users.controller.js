const usersCtrl = {};
const User = require('../models/User');
const passport = require('passport');

usersCtrl.renderSignUpForm = (req,res) => {
    res.render('users/signup');
};
usersCtrl.signup = async (req,res) => {
    const errors = [];
    const {CC,nombre,apellido,correo,contrasena,rol} = req.body;
    if(CC.length<10){
        errors.push({error_msg: 'C.C. inválido'});
    }
    if(errors.length>0){
        res.render('users/signup', {
            errors,
            CC,
            nombre,
            apellido,
            correo,
            rol,
            contrasena
        });
    } else {
        const ccUser = await User.findOne({CC: CC});
        const emailUser = await User.findOne({correo: correo});
        if(ccUser){
            req.flash('error_msg','CC ya registrada');
            res.redirect('/users/signup');
        }
        if(emailUser){
            req.flash('error_msg','Correo ya registrado');
            res.redirect('/users/signup');
        } else {
            const newUser = new User({CC,nombre,apellido,correo,rol,contrasena});
            newUser.contrasena = await newUser.encryptPassword(contrasena);
            await newUser.save();
            req.flash('success_msg','Estás registrado');
            res.redirect('/users/signin');
        }
    };
};
usersCtrl.renderSignInForm = (req,res) => {
    res.render('users/signin');
};
usersCtrl.signin = passport.authenticate('local',{
    failureRedirect: '/users/signin',
    successRedirect: '/users/inicio',
    failureFlash: true
});
usersCtrl.logout = (req,res) => {
    req.logout();
    req.flash('success_msg','Has cerrado sesión');
    res.redirect('/users/signin');
};
usersCtrl.inicio = (req,res) => {
    res.render('users/inicio');
};
usersCtrl.perfil = (req,res) => {
    res.render('users/perfil');
};
usersCtrl.renderEditUserForm = async (req,res) => {
    const userID = await User.findById(req.params.id);
    if(userID.user){
        req.flash('error_msg','No autorizado');
        return res.redirect('/users/perfil');
    };
    res.render('users/edit-user', {userID});
};
usersCtrl.updateUser = async (req,res) => {
    const {nombre,apellido,correo} = req.body;
    await User.findByIdAndUpdate(req.params.id, {nombre,apellido,correo});
    req.flash('success_msg','Datos actualizados');
    res.redirect('/users/perfil');
};
module.exports = usersCtrl;