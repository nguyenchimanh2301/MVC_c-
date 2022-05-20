
var app = angular.module('AdminSPApp', []);

app.controller("BillController", function ($scope, $http, $window) {
    $scope.btntxt = "Save";
    $scope.Hoadon = function () {
        $http({
            method: 'GET',
            url: 'http://localhost:65476//Admin/Hoadon/Getbill',
        }).then(function (response) {
            $scope.listLoaiSP = response.data;
        });
    };
    $scope.Xoa = function (item) {
        if (!confirm("Bạn có muốn xóa loại sản phẩm: " + item.Mahoadon + " không?")) {
            return;
        }
        $http({
            method: 'POST',
            url: 'http://localhost:65476//Admin/Hoadon/DeleteLSP',
            datatype: 'json',
            data: JSON.stringify(item)
        }).then(function (response) {
            if (response.data != " ") {
                alert('Xóa thành công');
                $window.location.reload();
            }
            else {
                alert('Thất bại');
            }
        });
    };




    $scope.Add = function () {

        var sp = {
        }
        sp.Mahoadon = $scope.random();
        sp.Khachhang_name = $scope.Khachhang_name;
        sp.diachi = $scope.diachi;
        sp.email = $scope.email;
        sp.phone = $scope.phone;
        sp.listsanpham = $scope.getProduct;
        sp.tong = $scope.Sumprice();

        $http({
            method: 'POST',
            url: 'http://localhost:65476/Cart/AddSP',
            datatype: 'json',
            data: JSON.stringify(sp)

        }).then(function (response) {
            if (response.data.data == 1) {
                alert('Thêm thành công');
            }
            else {
                alert('thất bại');
                debugger;
            }
        });
    }

    

})




    
