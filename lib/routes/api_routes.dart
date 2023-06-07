// ============= API ROUTES ==============

String baseUrl = "https://flex-gqe5.onrender.com"; // BASE URL

// ======= AUTH ROUTES ==========
String registerRoute = "/auth/register"; // REGISTER ROUTE
String loginRoute = "/auth/login"; // LOGIN ROUTE
String logoutRoute = "/auth/logout"; // LOGOUT ROUTE
String resendRegisterOtpRoute = "/auth/verify/email/send"; // RESEND REGISTER OTP ROUTE
String forgotPasswordRoute = "/auth/forgot-password"; // FORGOT PASSWORD ROUTE
String resetPasswordRoute = "/auth/reset-password"; // RESET PASSWORD ROUTE
String verifyRegisterOtpRoute = "/auth/verify/otp"; // VERIFY REGISTER OTP ROUTE
String verifyPasswordOtpRoute = "/auth/verify/password"; // VERIFY PASSWORD OTP ROUTE
String usernameValidationRoute = "/auth/username"; // USERNAME VALIDATION ROUTE
String createPinRoute = "/pin/"; // CREATE PIN ROUTE

// =========== PROFILE ROUTES ==============
String getProfileRoute = "/profile";
String updateProfileRoute = "/profile";
String updatePasswordRoute = "/profile/password";
String addPhoneRoute = "/profile/phone";
String addImageRoute = "/profile/image";