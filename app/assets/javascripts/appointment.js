function addNew() {
    var cloned = $('#selectService').clone(true);
    var count = 0;
    cloned.attr("id",count);
    cloned.appendTo("#newfield");
    count++;
};
