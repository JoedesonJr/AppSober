app.controller('soberCtrl', function ($scope, ProgramacaoAPI) {

    $scope.programacao = ProgramacaoAPI.getProgramacao();

    $scope.diasEvento = ['30 de Julho', '31 de Julho', '1º de Agosto', '2 de Agosto', '3 de Agosto'];

    $scope.dia = '';
    $scope.proximoDia = '';
    $scope.diaAnterior = '';
    $scope.diaEvento = function (dia) {
        $scope.dia = dia;
        for(var i=0; i<$scope.diasEvento.length; i++) {
            if($scope.diasEvento[i] == dia) {
                if(i>0) {
                    $scope.diaAnterior = $scope.diasEvento[i-1];
                }

                $scope.proximoDia = $scope.diasEvento[i+1];
                i = $scope.diasEvento.length;
            }
        }
        var diaSm = dia.split(" ");
        if(diaSm[2] == 'Julho') {
            $scope.diaSm = diaSm[0] + " " +"Jul.";
        } else {
            $scope.diaSm = diaSm[0] + " " +"Ago.";
        }
    };

});
