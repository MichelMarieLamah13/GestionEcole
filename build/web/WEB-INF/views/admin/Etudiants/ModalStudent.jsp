<%-- 
    Document   : addStudent
    Created on : 14 févr. 2021, 20:18:06
    Author     : khalf
--%>

<!-- add Modal  -->
<div id="addStudentModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <form action="/addStudent" method="post"  >
                <div class="modal-header">						
                    <h4 class="modal-title">Ajouter un Etudiant</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group bmd-form-group">
                                <label class="bmd-label-floating">Code Apogee</label>
                                <input type="text" name="codeApogee" class="form-control" required>

                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group bmd-form-group">
                                <label class="bmd-label-floating">CNE</label>
                                <input type="text" name="cne" class="form-control" required="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group bmd-form-group">
                                <label class="bmd-label-floating">Nom</label>
                                <input type="text" name="nom" class="form-control" required="">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group bmd-form-group">
                                <label class="bmd-label-floating">Prenom</label>
                                <input type="text" name="prenom" class="form-control" required="">
                            </div>
                        </div>
                    </div>
                    <div class="row">

                        <div class="col-md-6">
                            <label class="bmd-label-floating">Email</label>
                            <div class="form-group bmd-form-group">

                                <input type="text" name="email" class="form-control" required="">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label class="bmd-label-floating">Filiere</label>
                            <div class="form-group bmd-form-group">


                                <select class="form-control " name="idFiliere" >
                                    <option value="${filiere.getIdFiliere()}">${filiere.getCode()}</option>
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
                                <input type="date" name="date_naissance" class="form-control" value="26/05/1998 00:00 PM" required=""/>
                            </div>

                        </div>

                        <div class="col-md-4">
                            <div class="form-group bmd-form-group">
                                <label >Nationalite</label>
                                <select class="form-control " name="nationalite" >
                                    <option value="Marocain">Marocain</option>
                                    <option value="Etranger">Etranger</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group bmd-form-group">
                                <label >Sexe</label>
                                <select class="form-control"  name="Sexe" >
                                    <option value="H">Homme</option>
                                    <option value="F">Femme</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group bmd-form-group">
                                <input type="hidden" name="photo" value="null" class="form-control">
                            </div>
                        </div>




                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group bmd-form-group">
                                <label class="bmd-label-floating">Adresse</label>
                                <input type="text" name="adresse" class="form-control" required="">
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







<!-- Delete Modal HTML -->
<div id="deleteStudentModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="/deleteEtudiant" method="post">
                <input type="hidden" name="idEtudiant" id="id">
                <input type="hidden" name="idFiliere" id="filiere">
                <div class="modal-header">						
                    <h4 class="modal-title">Supprimer un Etudiant</h4>
                </div>
                <div class="modal-body">					
                    <p class="text-warning">voulez vous vraiment supprimer cet Etudiant </p>
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
    $('#addStudentModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget);
        var code = button.data('code');
        var id = button.data('id');
        var modal = $(this);
        modal.find('.modal-body #code').val(code);
        modal.find('.modal-body #id').val(id);
    });
    $('#deleteStudentModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget);
        var id = button.data('id');
        var filiere = button.data('filiere');
        var modal = $(this);
        modal.find('.modal-content #id').val(id);
        modal.find('.modal-content #filiere').val(filiere);
    });
    $('.datetimepicker').datetimepicker({
        icons: {
            time: "fa fa-clock-o",
            date: "fa fa-calendar",
            up: "fa fa-chevron-up",
            down: "fa fa-chevron-down",
            previous: 'fa fa-chevron-left',
            next: 'fa fa-chevron-right',
            today: 'fa fa-screenshot',
            clear: 'fa fa-trash',
            close: 'fa fa-remove'
        }
    });
</script>