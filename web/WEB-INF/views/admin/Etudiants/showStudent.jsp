<%@include file="../layouts/sidbare.jsp" %>

<div class="content">
    <form action="../EditStudent" method="post" enctype="multipart/form-data">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header card-header-primary">
                            <h4 class="card-title">Profile Etudiant</h4>
                            <p class="card-category">Modifier le profil</p>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group bmd-form-group">
                                        <label class="bmd-label-floating">Code Apogee</label>
                                        <input type="text" name="codeApogee" value="${etudiant.getCodeApogee()}" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group bmd-form-group">
                                        <label class="bmd-label-floating">CNE</label>
                                        <input type="text" name="cne" value="${etudiant.getCne()}" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group bmd-form-group">
                                        <label class="bmd-label-floating">Nom</label>
                                        <input type="text" name="nom" value="${etudiant.getNom()}" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group bmd-form-group">
                                        <label class="bmd-label-floating">Prenom</label>
                                        <input type="text" name="prenom" value="${etudiant.getPrenom()}" class="form-control" >
                                    </div>
                                </div>
                            </div>
                            <div class="row">

                                <div class="col-md-6">
                                    <label class="bmd-label-floating">Email</label>
                                    <div class="form-group bmd-form-group">
                                        <input type="text" name="email" value="${etudiant.getEmail()}" class="form-control" >
                                    </div>
                                </div>
                                <div class="col-md-6">
                                        <label class="bmd-label-floating">Filiere</label>
                                        <div class="form-group bmd-form-group">
                                            <select class="form-control " name="idFiliere" >
                                                <c:forEach var="filiere" items="${Filieres}" >
                                                    <c:if test='${filiere.getIdFiliere() == etudiant.getIdFiliere()}'>
                                                <option value="${etudiant.getIdFiliere()}" selected>${filiere.getCode()}</option>
                                                </c:if>    
                                            </c:forEach>
                                                <c:forEach var="filiere" items="${Filieres}" >
                                                    <tr>
                                                    <option value="${filiere.getIdFiliere()}">${filiere.getCode()}</option>
                                                    </tr>
                                                </c:forEach>
                                            </select>
                                        </div>


                                    </div>
                                </div>
                            
                            <div class="row">
                                <div class="col-md-4">
                                    <label >Date de naissance</label>
                                    <div class="form-group bmd-form-group">
                                        <input type="text" name="date_naissance" class="form-control datetimepicker" value="${etudiant.getDate_naissance()}"/>
                                    </div>

                                </div>

                                <div class="col-md-4">
                                    <div class="form-group bmd-form-group">
                                        <label >Nationalite</label>
                                        <select class="form-control " name="nationalite" >
                                            <option value="${etudiant.getNationalite()}" selected="" >${etudiant.getNationalite()}</option>
                                            <option value="Marocain">Marocain</option>
                                            <option value="Etranger">Etranger</option>

                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group bmd-form-group">
                                        <label >Sexe</label>
                                        <select class="form-control"  name="Sexe" >
                                            <option value="${etudiant.getSexe()}" selected="">${etudiant.getSexe()}</option>
                                            <option value="H">Homme</option>
                                            <option value="F">Femme</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <div class="form-group bmd-form-group">
                                            <label class="bmd-label-floating"> Adresse</label>
                                            <textarea class="form-control" name="adresse" rows="2">${etudiant.getAdresse()}</textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary pull-right">Modifier </button>
                            <div class="clearfix"></div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </form>
</div>

<%@include file="../layouts/footer.jsp" %>














