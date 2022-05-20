

var app = angular.module('AdminSPApp', ['angularUtils.directives.dirPagination']);


app.controller("SanPhamCtrl", function ($scope, $http, $window) {
    /*================== Danh sách các biến =================================== */
    $scope.listLoaiSP = [];
    $scope.TenLoaiSP = [];
    $scope.Item;
    $scope.btntxt = "Thêm mới";
    $scope.LoadLoaiSP = function () {
        $http({
            method: 'GET',
            url: 'http://localhost:65476//Admin/News/GetSP',
        }).then(function (response) {
            $scope.listLoaiSP = response.data;
        });
    };



    $scope.Xoa = function (item) {
        if (!confirm("Bạn có muốn xóa loại sản phẩm: " + item.Tieude + " không?")) {
            return;
        }
        $http({
            method: 'POST',
            url: 'http://localhost:65476//Admin/News/DeleteSP',
            datatype: 'json',
            data: JSON.stringify(item)
        }).then(function (response) {
            if (response.data == 1) {
                alert('Xóa thành công');
                $window.location.reload();
                $scope.LoadLoaiSP();
            }
            else {
                alert('Xóa thành công');
            }
        });
    };

    $scope.Add = function () {

        var sp = {
        }
        sp.Mabaiviet = $scope.Mabaiviet;
        sp.Tieude = $scope.Tieude;
        sp.Noidung = $scope.Noidung;
     
        var file = document.getElementById('file').files[0];

        if ($scope.btntxt == "Thêm mới") {

            if (file) {
                const formData = new FormData();
                formData.append('file', file);
                $http({
                    method: 'POST',
                    headers: {
                        'Content-Type': undefined
                    },
                    data: formData,
                    url: 'http://localhost:65476/Admin/News/Upload',
                }).then(function (res) {
                    sp.Anh = res.data;
                    $http({
                        method: 'POST',
                        url: 'http://localhost:65476/Admin/News/Add',
                        datatype: 'json',
                        data: JSON.stringify(sp)
                    }).then(function (response) {
                        if (response.data.data == 1) {
                            alert('Thêm thành công');
                            $window.location.reload();
                            $scope.LoadLoaiSP();
                        }
                        else {
                            alert('Có lỗi a');

                        }
                    });
                });
            } else {
                $http({
                    method: 'POST',
                    url: 'http://localhost:65476/Admin/News/Add',
                    datatype: 'json',
                    data: JSON.stringify(sp)
                }).then(function (response) {
                    if (response.data.data == 1) {
                        alert('Thêm thành công');
                        $window.location.reload();
                        $scope.LoadLoaiSP();
                    }
                    else {
                        alert('có lỗi b');
                    }
                });
            }
        }

        else {
            //sp.Admin/News_id = $scope.Item.Admin/News_id;
            if (file) {
                const formData = new FormData();
                formData.append('file', file);
                $http({
                    method: 'POST',
                    headers: {
                        'Content-Type': undefined
                    },
                    data: formData,
                    url: 'http://localhost:65476/Admin/News/Upload',
                }).then(function (res) {
                    sp.Anh = res.data;
                    $http({
                        method: 'POST',
                        url: 'http://localhost:65476/Admin/News/Update',
                        datatype: 'json',
                        data: JSON.stringify(sp)
                    }).then(function (response) {
                        if (response.data == 1) {
                            alert('Cập nhật thành công');
                            $window.location.reload();
                            $scope.LoadLoaiSP();
                        }
                        else {
                            alert('Có lỗi c');
                        }
                    });
                });
            } else {
                sp.Anh = $scope.Item.Anh;
                $http({
                    method: 'POST',
                    url: 'http://localhost:65476/Admin/News/UpdateAdmin/News',
                    datatype: 'json',
                    data: JSON.stringify(sp)
                }).then(function (response) {
                    if (response.data.data == 1) {
                        alert('Cập nhật thành công');
                        $window.location.reload();
                        $scope.LoadLoaiSP();
                    }
                    else {
                        alert('Có lỗi');

                    }
                });
            }
        }

    };
    $scope.GetSPid = function (item) {
        $scope.btntxt = "Sửa"
        $http({
            method: 'GET',
            url: 'http://localhost:65476//Admin/News/GetSPID/?id=' + item,
        }).then(function (response) {
            $scope.Mabaiviet = response.data.data.Mabaiviet;
            $scope.Tieude = response.data.data.Tieude;
            $scope.Noidung = response.data.data.Noidung;
            $scope.Anh = response.data.data.Anh;
        
        });
    };


    $scope.Update = function (item) {
        $http({
            method: 'POST',
            url: 'http://localhost:65476//Admin/News/UpdateSP',
        }).then(function (response) {
            if (response.data != "") {
                alert("Data Update Successfully");
                $scope.LoadLoaiSP();
            } else {
                alert("Some error");
            }
        });
    };
/*
    $scope.f = function (item) {
        $http({
            method: 'POST',
            url: 'http://localhost:65476//Admin/News/UpdateSP',
        }).then(function (response) {
            response.data.data.Loaisp_id = $scope.Loaisp_id
            response.data.data.Admin/News_id = $scope.Admin/News_id
            response.data.data.Admin/News_name = $scope.Admin/News_name
            response.data.data.gia = $scope.gia
            response.data.data.Nhacungcap_id = $scope.Nhacungcap_id
            response.data.data.Soluong = $scope.Soluong
            response.data.data.picture = $scope.picture
        });
    };*/

});














































