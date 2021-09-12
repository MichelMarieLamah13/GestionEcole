<%-- 
    Document   : dashboard
    Created on : 14 févr. 2021, 10:30:07
    Author     : khalf
--%>

<%@include file="layouts/sidbare.jsp" %>
<div class="content">
    <br>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="card card-stats">
                    <div class="card-header card-header-warning card-header-icon">
                        <div class="card-icon">
                            <i class="material-icons">content_copy</i>
                        </div>
                        <p class="card-category">Filières</p>
                        <h3 class="card-title">${Filieres.size()}
                            <small></small>
                        </h3>
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons">list</i>
                            Nombre total des filieres
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="card card-stats">
                    <div class="card-header card-header-success card-header-icon">
                        <div class="card-icon">
                            <i class="material-icons">people</i>
                        </div>
                        <p class="card-category">Etudiants</p>
                        <h3 class="card-title">${Etudiants.size()}</h3>
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons">person</i> Nombre total des Etudiants
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="card card-stats">
                    <div class="card-header card-header-danger card-header-icon">
                        <div class="card-icon">
                            <i class="material-icons">manage_accounts</i>
                        </div>
                        <p class="card-category">Administrateurs</p>
                        <h3 class="card-title">${nbrAdmin}</h3>
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons">person</i> Nombre total des Admins
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="row">
            <div class="col-lg-6 col-md-12">
                <div class="card">
                    <div class="card-header card-header-warning">
                        <h4 class="card-title">Filieres</h4>
                        <p class="card-category">Derniere Filieres </p>
                    </div>
                    <div class="card-body table-responsive">
                        <table class="table table-hover">
                            <thead class="text-warning">
                            <th>Code</th>
                            <th>Designation</th>
                            </thead>
                            <tbody>
                                <c:forEach var="filiere" items='${Filieres}' begin='0' end='4'>
                                    <tr>
                                        <td>${filiere.getCode()}</td>
                                        <td>${filiere.getDesignation()}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-12">
                <div class="card">
                    <div class="card-header card-header-tabs card-header-primary">
                        <div class="nav-tabs-navigation">
                            <div class="nav-tabs-wrapper">
                                <h4 class="card-title">Etudiants</h4>
                                <p class="card-category">Derniere affectations </p>
                            </div>
                        </div>
                    </div>
                    <div class="card-body table-responsive">
                        <table class="table table-hover">
                            <thead class="text-warning">
                            <th>Code Apogee</th>
                            <th>Nom</th>
                            <th>Filiere</th>
                            </thead>
                            <tbody>
                                <c:forEach var="etudiant" items='${Etudiants}' begin='0' end='4'>
                                    <tr>
                                        <td>${etudiant.getCodeApogee()}</td>
                                        <td>${etudiant.getNom()} ${etudiant.getPrenom()}</td>
                                        <c:forEach var="filiere" items='${Filieres}' >
                                            <c:if test="${filiere.getIdFiliere() == etudiant.getIdFiliere()}">
                                                <td>${filiere.getCode()}</td>
                                            </c:if>
                                        </c:forEach>
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
<%@include file="layouts/footer.jsp" %>    
