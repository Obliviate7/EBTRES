@extends('layouts.app')

@section('content')

  	<div class="container containerReg">
  		<div class="page-header">

  			<h2 class=" titleRegister" >Registro</h2>
  		</div>
  		<div class="">

  		<form class="" action="{{ route('register')}}" method="POST" enctype="multipart/form-data">
      {{ csrf_field() }}
  <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
  			<div class="form-group">
  				<label for="name">Nombre: </label>
  				<input id="name" class="form-control" type="text" name="name" placeholder="Ingresa tu nombre" value="">
  			</div>
  			@if ($errors->has('name'))
  					<span class="help-block">
  							<strong>{{ $errors->first('name') }}</strong>
  					</span>
  			@endif
  		</div>

  			  <div class="form-group{{ $errors->has('lastName') ? ' has-error' : '' }}">
  			<div class="form-group">
  				<label for="lastName">Apellido: </label>
  				<input id="lastName"  class="form-control" type="text" name="lastName" placeholder="Ingresa tu apellido" value="">
  			</div>
  			@if ($errors->has('lastName'))
  					<span class="help-block">
  							<strong>{{ $errors->first('lastName') }}</strong>
  					</span>
  			@endif
  		</div>


  			  <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
  			<div class="form-group">
  				<label for="email">Email: </label>
  				<input id="email" oninput="verifEmailJs()" class="form-control" type="text" name="email" placeholder="ejemplo@correo.com" value="">
  			</div>

  			@if ($errors->has('email'))
  					<span class="help-block">
  							<strong>{{ $errors->first('email') }}</strong>
  					</span>
  			@endif
  		</div>


  			<div id="mailExist" class="">

  			</div>

  			  <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
  			<div class="form-group">
  				<label for="password">Contraseña: </label>
  				<input id="password"  class="form-control" type="password" name="password" placeholder="********" >
  			</div>

  			@if ($errors->has('password'))
  					<span class="help-block">
  							<strong>{{ $errors->first('password') }}</strong>
  					</span>
  			@endif
  	</div>


  			<div class="form-group">
  				<label for="password-confirm">Confirmar contraseña: </label>
  				<input id="password-confirm" class="form-control conf-pass" type="password" name="password_confirmation" placeholder="********">
  			</div>

  			<button type="submit" class="btn btn-primary">
  					Registrar
  			</button>
  		</form>
  		</div>
  	</div>

@endsection
