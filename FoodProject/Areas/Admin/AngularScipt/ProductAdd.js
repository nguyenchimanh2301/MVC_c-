
app.controller("SanPhamCtrl", function ($scope, $http, $window) {
    /*================== Danh sách các biến =================================== */
    $scope.listLoaiSP = [];
    $scope.Item;

    $scope.LoadLoaiSP = function () {
        $http({
            method: 'GET',
            url: 'http://localhost:65476//SanPham/GetSP',
        }).then(function (response) {
            $scope.listLoaiSP = response.data;
        });
    };

    $scope.Xoa = function (item) {
        if (!confirm("Bạn có muốn xóa loại sản phẩm: " + item.sanpham_name + " không?")) {
            return;
        }
        $http({
            method: 'POST',
            url: 'http://localhost:65476//SanPham/DeleteSP',
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




    $scope.AddSanPham = function () {
        var sp = {
        }
        sp.Loaisp_id = $scope.Loaisp_id
        sp.Nhacungcap_id = $scope.Nhacungcap_id;
        sp.Soluong = $scope.Soluong;
        sp.sanpham_name = $scope.sanpham_name;
        sp.gia = $scope.gia;
        sp.sanpham_id = $scope.sanpham_id;
        var file = document.getElementById('file').files[0];

        if ($scope.btntxt === "Thêm mới") {

            if (file) {
                const formData = new FormData();
                formData.append('file', file);
                $http({
                    method: 'POST',
                    headers: {
                        'Content-Type': undefined
                    },
                    data: formData,
                    url: 'http://localhost:65476/SanPham/Upload',
                }).then(function (res) {
                    sp.picture = res.data;
                    $http({
                        method: 'POST',
                        url: 'http://localhost:65476/SanPham/AddSanPham',
                        datatype: 'json',
                        data: JSON.stringify(sp)
                    }).then(function (response) {
                        if (response.data.data == 1) {
                            alert('Thêm thành công');
                            $window.location.reload();
                            $scope.LoadLoaiSP();
                        }
                        else {
                            alert('Có lỗi');

                        }
                    });
                });
            } else {
                $http({
                    method: 'POST',
                    url: 'http://localhost:65476/SanPham/AddSanPham',
                    datatype: 'json',
                    data: JSON.stringify(sp)
                }).then(function (response) {
                    if (response.data.data == 1) {
                        alert('Thêm thành công');
                        $window.location.reload();
                        $scope.LoadLoaiSP();
                    }
                    else {
                        alert('có lỗi');
                    }
                });
            }
        }

        else {
            //sp.sanpham_id = $scope.Item.sanpham_id;
            if (file) {
                const formData = new FormData();
                formData.append('file', file);
                $http({
                    method: 'POST',
                    headers: {
                        'Content-Type': undefined
                    },
                    data: formData,
                    url: 'http://localhost:65476/SanPham/Upload',
                }).then(function (res) {
                    sp.picture = res.data;
                    $http({
                        method: 'POST',
                        url: 'http://localhost:65476/SanPham/UpdateSanPham',
                        datatype: 'json',
                        data: JSON.stringify(sp)
                    }).then(function (response) {
                        if (response.data == 1) {
                            alert('Cập nhật thành công');
                            $window.location.reload();
                            $scope.LoadLoaiSP();
                        }
                        else {
                            alert('Có lỗi');
                        }
                    });
                });
            } else {
                sp.picture = $scope.Item.picture;
                $http({
                    method: 'POST',
                    url: 'http://localhost:65476/SanPham/UpdateSanPham',
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
            url: 'http://localhost:65476//SanPham/GetSPID/?id=' + item,
        }).then(function (response) {
            $scope.Loaisp_id = response.data.data.Loaisp_id;
            $scope.sanpham_id = response.data.data.sanpham_id;
            $scope.sanpham_name = response.data.data.sanpham_name;
            $scope.gia = response.data.data.gia;
            $scope.Nhacungcap_id = response.data.data.Nhacungcap_id;
            $scope.Soluong = response.data.data.Soluong;
            $scope.picture = response.data.data.picture;
        });
    };





















    $scope.Update = function (item) {
        $http({
            method: 'POST',
            url: 'http://localhost:65476//SanPham/UpdateSP',
        }).then(function (response) {
            if (response.data != "") {
                alert("Data Update Successfully");
                $scope.LoadLoaiSP();
            } else {
                alert("Some error");
            }
        });
    };

    $scope.btntxts = "SỬA";
    $scope.btntxt = "THÊM";
   
    $scope.f = function (item) {
        $http({
            method: 'POST',
            url: 'http://localhost:65476//SanPham/UpdateSP',
        }).then(function (response) {
            response.data.data.Loaisp_id = $scope.Loaisp_id
            response.data.data.sanpham_id = $scope.sanpham_id
            response.data.data.sanpham_name = $scope.sanpham_name
            response.data.data.gia = $scope.gia
            response.data.data.Nhacungcap_id = $scope.Nhacungcap_id
            response.data.data.Soluong = $scope.Soluong
            response.data.data.picture = $scope.picture
        });
    };

});














































