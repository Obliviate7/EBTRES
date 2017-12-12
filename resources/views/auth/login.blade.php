@extends('layouts.app')

@section('content')
  <div class="container contLogin">
    <div class="page-header page-headerLog">
      <h2 class="titleLogin">Ingresar</h2>
    </div>

    <form  action="{{ route('login') }}" method="POST" enctype="multipart/form-data">
        {{ csrf_field() }}
      <div class="container contLogin">
  <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">

      <div class="form-group">
        <label for="email">Email: </label>
        <input id="email" class="form-control" type="text" name="email" placeholder="ejemplo@correo.com" value="">
      </div>
      @if ($errors->has('email'))
          <span class="help-block">
              <strong>{{ $errors->first('email') }}</strong>
          </span>
      @endif
      </div>


      <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
      <div class="form-group">
        <label for="password">Constraseña: </label>
        <input id="password" class="form-control" type="password" name="password" placeholder="********">
      </div>


      @if ($errors->has('password'))
          <span class="help-block">
              <strong>{{ $errors->first('password') }}</strong>
          </span>
      @endif
  </div>


      <div class="form-group">
        <button type="submit" class="btn btn-primary">
            Login
        </button>
      </div>
      <div class="checkbox">
        <label>
            <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> Recuerdame
        </label>
      </div>
      <div class="forgot">
        <a href="{{ route('password.request') }}" class="buttonForgotPassword">Olvidé mi contraseña</a>
      </div>
    </form>
  </div>
  </div>


@endsection
