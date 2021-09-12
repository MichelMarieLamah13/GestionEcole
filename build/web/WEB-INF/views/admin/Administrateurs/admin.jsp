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
                        <h4 class="card-title pull-left ">Liste des Administrateurs</h4>
                        <a href="#addUserModal"  data-toggle="modal" class="pull-right" style="color: white; text-decoration: none; margin-left: 15px;"><i class="material-icons" >&#xE147; </i> Ajouter</a>
                        <a href="#"   class="pull-right" style="color: white; text-decoration: none; margin-left: 15px;"><span class="material-icons" >backup </span> Importer</a>
                        <a href="#"   class="pull-right" style="color: white; text-decoration: none; margin-left: 15px;"><span class="material-icons">get_app </span> Exporter</a> 
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="dtBasicExample" class="table justify-content-center">
                                <thead class=" text-primary">
                                    <tr>
                                        <th>ID</th>
                                        <th>Login</th>
                                        <th>Password</th>
                                        <th>Role</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="admin" items='${Admins}' >
                                        <c:if test="${admin.getRole() != 'etudiant'}">
                                            <tr>
                                                <td>${admin.getIdUser()}</td>
                                                <td>${admin.getLogin()}</td>
                                                <td>${admin.getPassword()}</td>
                                                <td>${admin.getRole()}</td>
                                            </tr>
                                        </c:if>
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
<div id="addUserModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="AddUser" method="post">
                <div class="modal-header">						
                    <h4 class="modal-title">Ajouter un Admin</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group bmd-form-group">
                                <label class="bmd-label-floating">Login</label>
                                <input type="text" class="form-control" name="login">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group bmd-form-group">
                                <label class="bmd-label-floating">Password</label>
                                <input type="password" class="form-control" name="password">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group bmd-form-group">
                                <label class="bmd-label-floating">Confirmation</label>
                                <input type="password" class="form-control" name="confirmation">
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



<script>
    $(document).ready(function () {
        $('#dtBasicExample').DataTable();
        $('.dataTables_length').addClass('bs-select');
    });

</script>

<%@include file="../layouts/footer.jsp" %>  