<?php

include('lib/conexao.php');
include('lib/protect.php');
protect(1);

$sql_usuarios = "SELECT * FROM usuarios";
$sql_query = $mysqli->query($sql_usuarios) or die ($myqli->error);
$num_usuarios = $sql_query->num_rows;

?>
<!-- Page-header start -->
<div class="page-header card">
    <div class="row align-items-end">
        <div class="col-lg-8">
            <div class="page-header-title">
                <div class="d-inline">
                    <h4>Gerenciar usuários</h4>
                    <span>Administre os usuários cadastrados no sistema</span>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="page-header-breadcrumb">
                <ul class="breadcrumb-title">
                    <li class="breadcrumb-item">
                        <a href="index.php">
                            <i class="icofont icofont-home"></i>
                        </a>
                    </li>
                    <li class="breadcrumb-item"><a href="#!">Gerenciar Usuário</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Page-header end -->

<div class="page-body">
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h5>Todos os Usuário</h5>
                    <span><a href="index.php?p=cadastrar_usuario">Clique aqui</a> para cadastrar um usuário</span>
                </div>
                <div class="card-block table-border-style">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nome</th>
                                    <th>E-mail</th>
                                    <th>Créditos</th>
                                    <th>Data de cadastro</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php if($num_usuarios == 0) { ?>
                                    <tr>
                                        <td colspan="5">Nenhum usuário foi cadastrado</td>
                                    </tr>
                                <?php } else { 
                                    
                                while($usuario = $sql_query->fetch_assoc()) {
                                    ?>
                                    <tr> 
                                        <th scope="row"><?php echo $usuario['id']; ?></th>
                                        <td><?php echo $usuario['nome']; ?></td>
                                        <td><?php echo $usuario['email']; ?></td>
                                        <td>R$ <?php echo number_format($usuario['creditos'], 2, ',', ',');?></td>
                                        <td><a href="index.php?p=editar_usuario&id=<?php echo $usuario['id']; ?>">Editar</a> <a href="index.php?p=deletar_usuario&id=<?php echo $usuario['id']; ?>">Deletar</a> </td>
                                    </tr>
                                    <?php }
                            }?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>