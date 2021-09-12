<%-- 
    Document   : showfiliere
    Created on : 14 févr. 2021, 17:50:43
    Author     : khalf
--%>

<%@include file="../layouts/sidbare.jsp" %>
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header card-header-primary">
                        <h4 class="card-title">Detail Filiere</h4>
                    </div>
                    <div class="card-body">
                        <div class="tab-content">
                            <div class="tab-pane active" id="profile">
                                <table class="table">
                                    <tbody>
                                        <tr></tr>
                                        <tr>
                                            <th>Code </th>
                                            <td>${filiere.code}</td>
                                        </tr>
                                        <tr>
                                            <th>Designation  </th>
                                            <td>${filiere.designation}</td>
                                        </tr>
                                        <tr>
                                            <th>Description  </th>
                                            <td>${filiere.description}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header card-header-primary">
                        <h4 class="card-title "> Etudiants</h4>
                        <p class="card-category "> Liste des etudiants inscrits dans cette Filiere</p>
                        <a href="#addStudentModal"  data-toggle="modal" data-id="${filiere.idFiliere}" data-code="${filiere.code}" class="pull-right" style="color: white; text-decoration: none; margin-left: 15px;"><i class="material-icons" >&#xE147; </i> Ajouter</a>
                    </div>
                    <div class="card-body">
                        <div class="card-body table-responsive">
                            <table class="table table-hover">
                                <thead class="text-primary">
                                <th>Code Apoge</th>
                                <th>Nom</th>
                                <th>Date de naissance</th>
                                <th>Action</th>
                                </thead>
                                <tbody>
                                    <c:forEach var="e" items="${etudiants}">
                                        <tr>
                                            <td>${e.codeApogee}</td>
                                            <td>${e.nom} ${e.prenom}</td>
                                            <td>${e.date_naissance}</td>
                                            <td>
                                               <a href="/getstudent/${e.idEtudiant}" ><span class="material-icons">remove_red_eye</span></a> 
                                                <a href="#deleteStudentModal" class="delete" data-id="${e.idEtudiant}" data-filiere="${filiere.idFiliere}" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete" style="color: red">&#xE872;</i></a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <%@include file="../Etudiants/ModalStudent.jsp" %>
        </div>
    </div>
</div>
<%@include file="../layouts/footer.jsp" %>
