import * as React from 'react';
import { useState, useEffect } from 'react';
import Button from '@mui/material/Button';
import CssBaseline from '@mui/material/CssBaseline';
import TextField from '@mui/material/TextField';
import Link from '@mui/material/Link';
import Grid from '@mui/material/Grid';
import Box from '@mui/material/Box';
import Typography from '@mui/material/Typography';
import Container from '@mui/material/Container';
import { createTheme, ThemeProvider } from '@mui/material/styles';
import sapoLogo from '../../images/sapo.png';
import { signup } from '../../services/auth/signup';
import validator from 'validator';
import { toast, ToastContainer } from 'react-toastify';

import classNames from 'classnames/bind';
import styles from './Signup.module.scss';
import { AuthContext } from '../../contexts/AuthContex';
import { useNavigate } from 'react-router-dom';

const cx = classNames.bind(styles);

const defaultTheme = createTheme();

const style = {
    position: 'absolute',
    top: '50%',
    left: '50%',
    transform: 'translate(-50%, -50%)',
    borderRadius: 5,
    width: 470,
    height: 'fit-content',
    bgcolor: 'background.paper',
    boxShadow: 24,
    display: 'flex',
    justifyContent: 'center',
    alignItems: 'center',
    flexDirection: 'column',
    gap: '20px',
    p: 5,
};


export default function Signup() {
    const { handleLoggedin } = React.useContext(AuthContext);
    const navigate = useNavigate();

    const [phone, setPhone] = useState('');
    const [isPhoneEmpty, setIsPhoneEmpty] = React.useState(false);
    const [isPasswordEmpty, setIsPasswordEmpty] = React.useState(false);
    const handleSubmit = (event) => {
        event.preventDefault();
        const data = new FormData(event.currentTarget);
        const payload = {
            phone: data.get('phone'),
            password: data.get('password'),
        };

        if (validator.isEmpty(payload.phone)) {
            setIsPhoneEmpty(true);
        }

        if (validator.isEmpty(payload.password)) {
            setIsPasswordEmpty(true);
        }

        if (!validator.isEmpty(payload.phone) && !validator.isEmpty(payload.password)) {
            signup(payload)
                .then((res) => {
                    const token = res.data.token;
                    const user = res.data.userInfoDto;
                    handleLoggedin(token, user);
                    navigate('/');
                })
                .catch((err) => {
                    toast.error('Lỗi');
                });
        }
    };

    return (
        <ThemeProvider theme={defaultTheme}>
            <Container component="main" maxWidth="xs">
                <CssBaseline />
                <Box
                    sx={{
                        marginTop: 8,
                        display: 'flex',
                        flexDirection: 'column',
                        alignItems: 'center',
                    }}
                >
                    <img className={cx('img')} src={sapoLogo} alt="logo" />
                    <Typography component="h1" variant="h5">
                        Đăng ký
                    </Typography>
                    <Box component="form" onSubmit={handleSubmit} noValidate sx={{ mt: 1 }}>
                        <TextField margin="normal" required fullWidth id="phone" label="Số điện thoại" name="phone" />
                        <TextField
                            margin="normal"
                            required
                            fullWidth
                            name="password"
                            label="Mật khẩu"
                            type="password"
                            id="password"
                        />
                        <TextField
                            margin="normal"
                            required
                            fullWidth
                            name="repassword"
                            label="Nhập lại mật khẩu"
                            type="password"
                            id="repassword"
                        />
                        <Button type="submit" fullWidth variant="contained" sx={{ mt: 3, mb: 2 }}>
                            Đăng ký
                        </Button>
                        <Grid container>
                            <Grid item xs></Grid>
                            <Grid item>
                                <Link href="/login" variant="body2">
                                    {'Đăng nhập'}
                                </Link>
                            </Grid>
                        </Grid>
                    </Box>
                </Box>
            </Container>
        </ThemeProvider>
    );
}
