window.onload = function (ev) {
    showContext();

    $('#returnTab').click(function () {
        showContext();
    });

    $('#next_identifier').click(function () {
        showIdentifier();
    });

    $('#returnCollectInfo').click(function () {
        showCollectInfo();
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
}

function showContext() {
    $('#tab').show();
    $('#collectInfo').hide();
    $('#identifier').hide();
    $('#transaction').hide();
    $('#flatsInfo').hide();
}

function showCollectInfo() {
    $('#tab').hide();
    $('#collectInfo').show();
    $('#identifier').hide();
    $('#transaction').hide();
    $('#flatsInfo').hide();
}

function showIdentifier() {
    $('#tab').hide();
    $('#collectInfo').hide();
    $('#identifier').show();
    $('#transaction').hide();
    $('#flatsInfo').hide();
}

function showTransaction() {
    $('#tab').hide();
    $('#collectInfo').hide();
    $('#identifier').hide();
    $('#transaction').show();
    $('#flatsInfo').hide();
}

function showflatsInfo() {
    $('#tab').hide();
    $('#collectInfo').hide();
    $('#identifier').hide();
    $('#transaction').hide();
    $('#flatsInfo').show();
}