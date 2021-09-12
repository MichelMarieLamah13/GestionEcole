<%-- 
    Document   : filieres
    Created on : 14 févr. 2021, 18:48:30
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
                        <h4 class="card-title pull-left ">Liste des Etudiants</h4>
                        <a href="#addStudentModal"  data-toggle="modal" class="pull-right" style="color: white; text-decoration: none; margin-left: 15px;"><i class="material-icons" >&#xE147; </i> Ajouter</a>
                        <a href="#"   class="pull-right" style="color: white; text-decoration: none; margin-left: 15px;"><span class="material-icons" >backup </span> Importer</a>
                        <a href="#"   class="pull-right" style="color: white; text-decoration: none; margin-left: 15px;"><span class="material-icons">get_app </span> Exporter</a> 
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="dtBasicExample" class="table">
                                <thead class=" text-primary">
                                    <tr>
                                        <th>Code Apogee</th>
                                        <th>Nom</th>
                                        <th>Email</th>
                                        <th>Filiere</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                     <c:forEach var="etudiant" items='${Etudiants}' >
                                    <tr>
                                        <td>${etudiant.getCodeApogee()}</td>
                                        <td>${etudiant.getNom()} ${etudiant.getPrenom()}</td>
                                        <td>${etudiant.getEmail()} </td>
                                        
                                        <c:forEach var="filiere" items='${Filieres}' >
                                            <c:if test="${filiere.getIdFiliere() == etudiant.getIdFiliere()}">
                                                <td>${filiere.getCode()}</td>
                                            </c:if>
                                        </c:forEach>
                                    
                                        
                                        <td>
                                            <a href="../getstudent/${etudiant.getIdEtudiant()}" ><span class="material-icons">remove_red_eye</span></a> 
                                            
                                            <a href="#deleteStudentModal" data-id="${etudiant.getIdEtudiant()}" data-filiere="${etudiant.getIdFiliere()}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete" style="color: red">&#xE872;</i></a>
                                            
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
<%@include file="ModalStudent.jsp" %>


<script>
    $(document).ready(function () {
        $('#dtBasicExample').DataTable();
        $('.dataTables_length').addClass('bs-select');
    });
</script>

<%@include file="../layouts/footer.jsp" %>  