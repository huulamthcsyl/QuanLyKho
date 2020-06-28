using QuanLyKho.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace QuanLyKho.ViewModel
{
    public class LoginViewModel : BaseViewModel
    {
        public bool isLogin { get; set; }

        private string _Username;
        public string Username { get => _Username; set { _Username = value; OnPropertyChanged(); } }
        private string _Password;
        public string Password { get => _Password; set { _Password = value; OnPropertyChanged(); } }

        public ICommand PasswordChangedCommand { get; set; }
        public ICommand LoginCommand { get; set; }
        public ICommand CloseCommand { get; set; }

        public LoginViewModel()
        {
            isLogin = false;
            Password = "";
            LoginCommand = new RelayCommand<Window>(p => { return true; }, p => { Login(p); });
            PasswordChangedCommand = new RelayCommand<PasswordBox>(p => { return true; }, p => { Password = p.Password; });
            CloseCommand = new RelayCommand<Window>(p => { return true; }, p => { p.Close(); });
        }

        void Login(Window window)
        {
            if (window == null) return;

            string passEncode = MD5Hash(Base64Encode(Password));
            var accCount = DataProvider.Instance.DB.Users.Where(p => p.UserName == Username && p.Password == passEncode).Count();

            isLogin = accCount > 0 ? true : false;

            if (isLogin)
            {
                window.Close();
            }
            else
            {
                MessageBox.Show("Sai tên đăng nhập hoặc mật khẩu");
            }
        }

        public static string Base64Encode(string plainText)
        {
            var plainTextBytes = System.Text.Encoding.UTF8.GetBytes(plainText);
            return System.Convert.ToBase64String(plainTextBytes);
        }

        public static string MD5Hash(string input)
        {
            StringBuilder hash = new StringBuilder();
            MD5CryptoServiceProvider md5provider = new MD5CryptoServiceProvider();
            byte[] bytes = md5provider.ComputeHash(new UTF8Encoding().GetBytes(input));

            for (int i = 0; i < bytes.Length; i++)
            {
                hash.Append(bytes[i].ToString("x2"));
            }
            return hash.ToString();
        }
    }
}
