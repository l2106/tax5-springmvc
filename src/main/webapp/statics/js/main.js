window.onload = function (ev) {
    showContext();

    $('#returnTab').click(function () {
        showContext();
    });

    $('#next_identifier').click(function () {
        showIdentifier();
        $step.nextStep();
    });

    $('#returnCollectInfo').click(function () {
        showCollectInfo();
        $step.prevStep();
    })

    $('#next_transaction').click(function () {
        showTransaction();
    })

    $('#returnIdentifier').click(function () {
        showIdentifier();
    })

    $('#next_flatsInfo').click(function () {
        showflatsInfo();
    })

    $('#returnTransaction').click(function () {
        showTransaction();
    })

    $('#next_personalInfo').click(function () {
        showPersonalInfo();
    })

    $('#returnFlatsInfo').click(function () {
        showflatsInfo();
    })

    $("#btn_submit").click(function () {
        showBasicInfo();
        $step.nextStep();
    })

    $("#next_basicInfo").click(function () {
        $('#checkInfo').modal({backdrop: 'static', keyboard: false});
    })

    $('#returnPersonalInfo').click(function () {
        showPersonalInfo();
        $step.prevStep();
    })

    $('#next_tableInfo').click(function () {
        showTableInfo();
        $step.nextStep();
    })

    $('#returnBasicInfo').click(function () {
        showBasicInfo();
        $step.prevStep();
    })

    $('#next_tablePrint').click(function () {
        showTablePrint();
    })
}

function showContext() {
    $('#tab').show();
    $('#collectInfo').hide();
    $('#identifier').hide();
    $('#transaction').hide();
    $('#flatsInfo').hide();
    $('#personalInfo').hide();
    $('#basicInfo').hide();
    $('#tableInfo').hide();
    $('#tablePrint').hide();
    $('#progressBar').hide();
}

function showCollectInfo() {
    $('#tab').hide();
    $('#collectInfo').show();
    $('#identifier').hide();
    $('#transaction').hide();
    $('#flatsInfo').hide();
    $('#personalInfo').hide();
    $('#basicInfo').hide();
    $('#tableInfo').hide();
    $('#tablePrint').hide();
    $('#progressBar').show();
}

function showIdentifier() {
    $('#tab').hide();
    $('#collectInfo').hide();
    $('#identifier').show();
    $('#transaction').hide();
    $('#flatsInfo').hide();
    $('#personalInfo').hide();
    $('#basicInfo').hide();
    $('#tableInfo').hide();
    $('#tablePrint').hide();
    $('#progressBar').show();
}

function showTransaction() {
    $('#tab').hide();
    $('#collectInfo').hide();
    $('#identifier').hide();
    $('#transaction').show();
    $('#flatsInfo').hide();
    $('#personalInfo').hide();
    $('#basicInfo').hide();
    $('#tableInfo').hide();
    $('#tablePrint').hide();
    $('#progressBar').show();
}

function showflatsInfo() {
    $('#tab').hide();
    $('#collectInfo').hide();
    $('#identifier').hide();
    $('#transaction').hide();
    $('#flatsInfo').show();
    $('#personalInfo').hide();
    $('#basicInfo').hide();
    $('#tableInfo').hide();
    $('#tablePrint').hide();
    $('#progressBar').show();
}

function showPersonalInfo() {
    $('#tab').hide();
    $('#collectInfo').hide();
    $('#identifier').hide();
    $('#transaction').hide();
    $('#flatsInfo').hide();
    $('#personalInfo').show();
    $('#basicInfo').hide();
    $('#tableInfo').hide();
    $('#tablePrint').hide();
    $('#progressBar').show();
}

function showBasicInfo() {
    $('#tab').hide();
    $('#collectInfo').hide();
    $('#identifier').hide();
    $('#transaction').hide();
    $('#flatsInfo').hide();
    $('#personalInfo').hide();
    $('#basicInfo').show();
    $('#tableInfo').hide();
    $('#tablePrint').hide();
    $('#progressBar').show();
}

function showTableInfo() {
    $('#tab').hide();
    $('#collectInfo').hide();
    $('#identifier').hide();
    $('#transaction').hide();
    $('#flatsInfo').hide();
    $('#personalInfo').hide();
    $('#basicInfo').hide();
    $('#tableInfo').show();
    $('#tablePrint').hide();
    $('#progressBar').show();
}

function showTablePrint() {
    $('#tab').hide();
    $('#collectInfo').hide();
    $('#identifier').hide();
    $('#transaction').hide();
    $('#flatsInfo').hide();
    $('#personalInfo').hide();
    $('#basicInfo').hide();
    $('#tableInfo').hide();
    $('#tablePrint').show();
}