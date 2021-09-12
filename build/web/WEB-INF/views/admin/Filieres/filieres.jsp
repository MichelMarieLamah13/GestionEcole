<%-- 
    Document   : filieres
    Created on : 14 févr. 2021, 12:48:30
    Author     : khalf
--%>



<%@include file="../layouts/sidbare.jsp" %>
<div class="content">


    <font color="green">
    ${successMsg}
    </font>
    <font color="red">
    ${errorMsg}
    </font>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">

                    <div class="card-header card-header-primary">
                        <h4 class="card-title pull-left ">Liste des filieres</h4>
                        <a href="#addFiliereModal"  data-toggle="modal" class="pull-right" style="color: white; text-decoration: none; margin-left: 15px;"><i class="material-icons" >&#xE147; </i> Ajouter</a>
                        <a href="#"   class="pull-right" style="color: white; text-decoration: none; margin-left: 15px;"><span class="material-icons" >backup </span> Importer</a>
                        <a href="#"   class="pull-right" style="color: white; text-decoration: none; margin-left: 15px;"><span class="material-icons">get_app </span> Exporter</a> 
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <!-- Table -->
                            <table id="dtBasicExample" class="table">
                                <thead class=" text-primary">
                                    <tr>
                                        <th>ID</th>
                                        <th>Code</th>
                                        <th>Designation</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="t" items="${filieres}">
                                        <tr>
                                            <td>${t.idFiliere}</td>
                                            <td>${t.code}</td>
                                            <td>${t.designation}</td>
                                            <td>
                                                <a href="/getfiliere/${t.idFiliere}" ><span class="material-icons">remove_red_eye</span></a> 
                                                <a href="#editFiliereModal" data-toggle="modal" data-id="${t.idFiliere}" data-code= "${t.code}"data-designation="${t.designation}" data-description="${t.description}"><i class="material-icons" data-toggle="tooltip" title="Edit" style="color: blue">&#xE254;</i></a>
                                                <a href="#deleteFiliereModal" class="delete" data-toggle="modal" data-id="${t.idFiliere}"><i class="material-icons" data-toggle="tooltip" title="Delete" style="color: red">&#xE872;</i></a>
                                            </td>
                                     </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<!-- add Modal  -->
<div id="addFiliereModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="/add/filiere" method="post">
                <div class="modal-header">						
                    <h4 class="modal-title">Ajouter une Filiere</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group bmd-form-group">
                                <label class="bmd-label-floating">Code</label>
                                <input type="text" class="form-control" name="code">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group bmd-form-group">
                                <label class="bmd-label-floating">Designation</label>
                                <input type="text" class="form-control" name="designation">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="form-group bmd-form-group">
                                    <label class="bmd-label-floating">Description</label>
                                    <textarea class="form-control" rows="5" name="description"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Annuler">
                    <input type="submit" class="btn btn-success" value="Ajouter">

                </div>
            </form>
        </div>
    </div>
</div>

<!-- update Modal  -->
<div id="editFiliereModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="/UpdateFieliere" method="post">
                <div class="modal-header">						
                    <h4 class="modal-title">Modifier une Filiere</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <label class="bmd-label-floating">Code</label>
                            <div class="form-group bmd-form-group">
                                <input type="text" class="form-control" id="code" name="code">
                                <input type="hidden" name="idFiliere" id="id">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <label class="bmd-label-floating">Designation</label>
                            <div class="form-group bmd-form-group">
                                <input type="text" class="form-control" id="designation" name="designation">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="bmd-label-floating">Description</label>
                                <div class="form-group bmd-form-group">
                                    <textarea class="form-control" rows="2" id="description" name="description"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Annuler">
                    <input type="submit" class="btn btn-success" value="Modifier">
                    

                </div>
            </form>
        </div>
    </div>
</div>



<!-- Delete Modal HTML -->
<div id="deleteFiliereModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="/DeleteFiliere" method="post">
                <div class="modal-header">						
                    <h4 class="modal-title">Supprimer une Filiere</h4>
                </div>
                <div class="modal-body">					
                    <p class="text-warning">voulez vous vraiment supprimer cette filiere </p>
                    <input type="hidden" name="idFiliere" id="id">
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Annuler">
                    <input type="submit" class="btn btn-danger" value="Supprimer">
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        $('#dtBasicExample').DataTable();
        $('.dataTables_length').addClass('bs-select');
    });
    $('#editFiliereModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget);
        var id = button.data('id');
        var code = button.data('code');
        var designation = button.data('designation');
        var description = button.data('description');
        var modal = $(this);
        modal.find('.modal-body #id').val(id);
        modal.find('.modal-body #code').val(code);
        modal.find('.modal-body #designation').val(designation);
        modal.find('.modal-body #description').val(description);
    });
    $('#deleteFiliereModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget);
        var id = button.data('id');
        var modal = $(this);
        modal.find('.modal-body #id').val(id);
    });
</script>

<%@include file="../layouts/footer.jsp" %>  