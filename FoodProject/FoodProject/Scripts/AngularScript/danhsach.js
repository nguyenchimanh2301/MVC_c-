
var app = angular.module('FoodApp', []);


app.controller("FoodCtrl", function ($scope, $http, $window) {
    /*================== Danh sách các biến =================================== */
    $scope.listSP = [];

    $scope.LoadLoaiSP = function (malsp) {
        $http({
            method: 'GET',
            url: 'http://localhost:65476/Product/GetchitietLSP/?malsp=' + malsp,
        }).then(function (response) {
            $scope.listSP = response.data;
            console.log(response)
        });
    };
    $scope.LoadList = function () {
        $http({
            method: 'GET',
            url: 'http://localhost:65476/Product/Menu',
        }).then(function (response) {
            $scope.list = response.data;
            console.log(response)
        });
    };


    $scope.addToCart = function (sp) {
        let item = {};
        item.sanpham_id = sp.sanpham_id;
        item.sanpham_name = sp.sanpham_name;
        item.picture = sp.picture;
        item.gia = sp.gia;
        item.quantity = 1;
        var list;
        if (localStorage.getItem('cart') == null) {
            list = [item];
        } else {
            list = JSON.parse(localStorage.getItem('cart')) || [];
            let ok = true;
            for (let x of list) {
                if (x.sanpham_id == item.sanpham_id) {
                    x.quantity += 1;
                    ok = false;
                    break;
                }
            }
            if (ok) {
                list.push(item);
            }
        }
        localStorage.setItem('cart', JSON.stringify(list));
        alert("Đã thêm giở hàng thành công");
    };
    
});
 
 



