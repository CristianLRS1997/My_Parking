$("#Trabajador").validate({
                    
                    rules:{
                        
                        nombres:{ required:true, minlength:3, maxlength:45 },
                        apellidos:{ required:true, minlength:3  },
                        documento:{ required:true, minlength:9 , maxlength:12 },
                        
                        email:{ required:true                                                                                                                                                 },
                        contrasena:{ required:true  },
                        conficontrasena:{ required:true, minlength:3, equalTo:contrasena   }
                        
                        
                        
                    }, messages:{
                        
                        nombres:{ required:"ingrese nombres", minlength:"el nombre tiene  que ser mayor a 2 caracteres", maxlength:"nombre demasiado largo" },
                        apellidos:{ required:"ingrese apellidos", minlength:"el apellido tiene  que ser mayor a 2 caracteres" },
                        documento:{ required:"ingrese nombre de  ciudad", minlength:"la ciudad  tiene  que ser mayor a 2 caracteres"  },
                        
                        email:{ required:"ingrese email", email:"ingrese una direccion valida"},
                        contrasena:{ required:"ingrese contraseña" },
                        conficontrasena:{ required:"confirme su contraseña", equalTo:"la contraseña no coincide"   }
                                                                                        
                        
                        
                    }
                    
                    
                    
                    
                })
                