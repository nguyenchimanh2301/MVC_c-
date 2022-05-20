



app.controller('SanPhamCtrl', ['$scope', 'CrudService',
    function ($scope, CrudService) {
        // Base Url   

        var baseUrl = '/Cart/';


        $scope.Savedt = function () {
            var st = {
                Mahoadon: $scope.Loaisp_id,
                Khachhang_name: $scope.Khachhang_name,
                diachi: $scope.diachi,
                sanpham: $scope.sanpham,
                gioitinh = $scope.gioitinh,
                email: $scope.email,
                phone: $scope.phone,
                tong = $scope.tong,
            }
            var apiRoute = baseUrl + 'Addbill';
            var saveLSP = CrudService.post(apiRoute, st);
            saveLSP.then(function (response) {
                if (response.data != "") {
                    alert("Data Save Successfully");
                    $scope.Clear();

                } else {
                    alert("Some error");
                }
            },
                function (error) {
                    console.log("Error: " + error);
                });

        }
    }]);
