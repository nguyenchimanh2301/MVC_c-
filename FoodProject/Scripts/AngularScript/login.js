
var app = angular.module("Login", []);

app.controller("LoginCtrl", function ($scope, $http, $window, $timeout) {
    $scope.listSP = [];
    /*=================== Thao tác dữ liệu ==================================== */
    $scope.Logins = function () {

        let Login = {};
        Login.Users_id = $scope.Users_id;
        Login.Passwords = $scope.Passwords;
        $http({
            method: 'POST',
            url: 'http://localhost:65476/Login/DangNhap',
            datatype: 'json',
            data: JSON.stringify(Login)
        }).then(function (response) {
            if ($scope.Users_id == null || $scope.Passwords == null) {
                alert('Có lỗi');
                return false;
            }
            if (response.data.ok == 1) {

                console.log(response.data)
            }
            else {

                alert('Có lỗi');
            }

        });
    }
    $scope.Login = function (id) {
        $http({
            method: 'GET',
            url: 'http://localhost:65476/Login/GetLogin/?id='+id,
            datatype: 'json',
        }).then(function (response) {
            if ($scope.Users_id == null || $scope.Passwords == null) {
                alert('Có lỗi');
                return false;
            }
            if ($scope.Users_id == id ) {
                alert('Đăng Nhập Thành Công');
                window.location.href = 'http://localhost:65476/Admin/Customer/Customer';
            }
            else {
                alert('Có lỗi');
            }
           
        });
    };
    
});
 
 



