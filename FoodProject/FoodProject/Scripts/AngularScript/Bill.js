
var app = angular.module('AdminSPApp', []);

app.controller("BillController", function ($scope, $http, $window) {
    $scope.btntxt = "THANH TOÁN";
    $scope.Add = function () {
        $('#bill').hide();
        var sp = {
        }
        sp.Mahoadon = $scope.random();
        sp.Khachhang_name = $scope.Khachhang_name;
        sp.diachi = $scope.diachi;
        sp.email = $scope.email;
        sp.phone = $scope.phone;
        sp.listsanpham = $scope.getProduct();
        sp.tongtien = $scope.Sumprice();

        $http({
            method: 'POST',
            url: 'http://localhost:65476/Cart/AddSP',
            datatype: 'json',
            data: JSON.stringify(sp)

        }).then(function (response) {
            if (response.data.data == 1) {
                alert('THANH TOÁN THÀNH CÔNG');
                localStorage.removeItem('cart');
                window.location.reload();
            }
            else {
                alert('thất bại');
                debugger;
            }
        });
    }

    $scope.random = () => {
        var x = 'HD'+Math.random().toString(36).substring(2, 15);
        return x;
    }
    console.log($scope.random());
    $scope.LoadCart = function () {
        $scope.listSP = JSON.parse(localStorage.getItem('cart'));
    };
    $scope.LoadCart();
    $scope.Sumprice = function () {
        var sum = 0;
        for (var i = 0; i < $scope.listSP.length; i++) {
            sum += $scope.listSP[i].gia * $scope.listSP[i].quantity;
        }
    
        $scope.tongia = sum;
        console.log(sum);
        return sum;
    }
  

    $scope.getProduct = function () {
        var sum = "";
        for (var i = 0; i < $scope.listSP.length; i++) {
            sum += $scope.listSP[i].sanpham_name +'/';
        }
        console.log(sum);
        return sum;
    }


 

})

