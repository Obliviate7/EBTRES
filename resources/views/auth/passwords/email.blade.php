@extends('layouts.app')

@section('content')
<div class="container containerReg">

          <div class="page-header">
            <h2 class="titleRegister">Reestablecer contraseña</h2>
          </div>
  <div class="">

                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form method="POST" action="{{ route('password.email') }}">
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                          <div class="form-group">
                            <label for="email" >E-Mail</label>


                                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required>
                              </div>
                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif

                        </div>

                        <div class="form-group">

                                <button type="submit" class="btn btn-lg btn-primary btn-block submitLog">
                                    Enviar link para  reestablecer la contraseña
                                </button>


                        </div>
                    </form>



</div>
</div>
@endsection
