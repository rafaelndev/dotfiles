Vim�UnDo� ��E2,���p抩��Z��H*v�HY
��T�   �                 P       P   P   P    VPn�   > _�                     Z   -    ����                                                                                                                                                                                                                                                                                                                                                             V7�    �   Z   \   �              �   Z   \   �    5�_�                    [   3    ����                                                                                                                                                                                                                                                                                                                                                             V7�     �   Z   [          4        $lti_resource_link = App('LtiResourceLink');5�_�                    Z        ����                                                                                                                                                                                                                                                                                                                                                             V7�    �   Z   \   �              �   Z   \   �    5�_�                    [       ����                                                                                                                                                                                                                                                                                                                                                             V7�6    �   Z   [                  session()->has('')5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                             V7�    �   �   �   �              �   �   �   �    5�_�                    �   9    ����                                                                                                                                                                                                                                                                                                                                                             V7�     �   �   �          :        $lti_resource_link = $lti_user->getResourceLink();5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                             V7�    �   �   �   �              �   �   �   �    5�_�      	              �       ����                                                                                                                                                                                                                                                                                                                                                             V7�     �   �   �                  finalizarCurso5�_�      
           	   �        ����                                                                                                                                                                                                                                                                                                                                                             V7�     �   �   �                  s($lti_outcome);5�_�   	              
   �        ����                                                                                                                                                                                                                                                                                                                                                             V7�    �   �   �   �              �   �   �   �    5�_�   
                 �       ����                                                                                                                                                                                                                                                                                                                                                             V7�    �   �   �                  doOutcomesService5�_�                    ]       ����                                                                                                                                                                                                                                                                                                                                                             V8��    �   \   ^   �                      $error = [5�_�                    ]       ����                                                                                                                                                                                                                                                                                                                                                             V8��   	 �   \   ^   �                      $error = 5�_�                    ]       ����                                                                                                                                                                                                                                                                                                                                                             V8��   
 �   \   ^   �                      $error = []5�_�                    `   5    ����                                                                                                                                                                                                                                                                                                                                                             V8�    �   _   a   �      5                return response()->json($error, 500);5�_�                    `   4    ����                                                                                                                                                                                                                                                                                                                                                             V8�
    �   _   a   �      4                return response()->json($error, 500)5�_�                   Z   4    ����                                                                                                                                                                                                                                                                                                                                                             V8��    �   Y   [   �      4        $lti_resource_link = App('LtiResourceLink');5�_�                    Z   3    ����                                                                                                                                                                                                                                                                                                                                                             V8��    �   Y   [   �      3        $lti_resource_link = App('LtiResourceLink')5�_�                    �   1    ����                                                                                                                                                                                                                                                                                                                                                             V8�    �   �   �   �      1            return response()->json($error, 500);5�_�                    �   0    ����                                                                                                                                                                                                                                                                                                                                                             V8�    �   �   �   �      0            return response()->json($error, 500)5�_�                    I   %    ����                                                                                                                                                                                                                                                                                                                                                             V:�    �   H   J   �      %        return view('cursos.create');5�_�                    I   $    ����                                                                                                                                                                                                                                                                                                                                                             V:�    �   H   J   �      $        return view('cursos.create')5�_�                    c       ����                                                                                                                                                                                                                                                                                                                            b           c           V        VA�    �   c   f   �              �   c   e   �    5�_�                    e   >    ����                                                                                                                                                                                                                                                                                                                            b           c           V        VA�    �   d   f   �      >        $lti_user - \App\LtiUser::getLtiUser($user_id_session)5�_�                    b   >    ����                                                                                                                                                                                                                                                                                                                            b           c           V        VA�     �   a   b          D        $lti_user = \App\LtiUser::where('user_id', $user_id_session)               ->first();    5�_�                    a       ����                                                                                                                                                                                                                                                                                                                            b           b           V        VA�    �   a   c   �    5�_�                    g        ����                                                                                                                                                                                                                                                                                                                            e          g          V       VA '    �   g   i   �              �   g   i   �    5�_�                    h   R    ����                                                                                                                                                                                                                                                                                                                            e          g          V       VA @    �   g   i   �      R        $lti_context = \App\LtiContext::getLtiContext($resource_id, $consumer_key)5�_�                    e   H    ����                                                                                                                                                                                                                                                                                                                            e          g          V       VA D     �   d   e          I        $lti_context = \App\LtiContext::where('context_id', $resource_id)   2            ->where('consumer_key', $consumer_key)               ->first();5�_�      !               d        ����                                                                                                                                                                                                                                                                                                                            e          e          V       VA F    �   c   d           5�_�       "           !   �        ����                                                                                                                                                                                                                                                                                                                            �           �           V        VA V    �   �   �                  s($respostas_corretas);           s($element_question);    5�_�   !   #           "   �        ����                                                                                                                                                                                                                                                                                                                            �   #       �           V        VO�    �   �   �          %        $markers = $request->markers;�   �   �          $        $nota_atividade = (float) 0;�   �   �                   $respostas_corretas = 0;�   �   �                  $element_question = 0;5�_�   "   $           #   �        ����                                                                                                                                                                                                                                                                                                                                                             VPXh    �   �   �   �              �   �   �   �    5�_�   #   %           $   �       ����                                                                                                                                                                                                                                                                                                                                                             VPXo     �   �   �                  $lti_user->5�_�   $   &           %   �       ����                                                                                                                                                                                                                                                                                                                                                             VPXr     �   �   �   �              �   �   �   �    5�_�   %   '           &   �       ����                                                                                                                                                                                                                                                                                                                                                             VPX{   ! �   �   �                  $request->5�_�   &   (           '   �       ����                                                                                                                                                                                                                                                                                                                                                             VPX�   " �   �   �   �            �   �   �   �    5�_�   '   )           (   �       ����                                                                                                                                                                                                                                                                                                                                                             VPX�     �   �   �                $this->finali5�_�   (   *           )   �       ����                                                                                                                                                                                                                                                                                                                                                             VPX�   # �         �    �   �   �   �            �   �   �   �    5�_�   )   +           *   �       ����                                                                                                                                                                                                                                                                                                                                                             VPX�     �   �   �                \App\Curso::5�_�   *   ,           +   �       ����                                                                                                                                                                                                                                                                                                                                                             VPX�   $ �   �   �   �              �   �   �   �    5�_�   +   -           ,   �       ����                                                                                                                                                                                                                                                                                                                                                             VPX�     �   �   �                  \App\Curso::getLti5�_�   ,   .           -   �        ����                                                                                                                                                                                                                                                                                                                                                             VPY*   % �   �   �   �              �   �   �   �    5�_�   -   /           .   �       ����                                                                                                                                                                                                                                                                                                                                                             VPY:   ' �   �   �                  session()->g5�_�   .   0           /          ����                                                                                                                                                                                                                                                                                                                                                             VPY�   ( �                
use Curso;5�_�   /   1           0   �   %    ����                                                                                                                                                                                                                                                                                                                                                             VPY�   * �   �   �   �      &        $curso = Curso::getLtiCurso();    �   �   �   �              �   �   �   �    5�_�   0   2           1      (    ����                                                                                                                                                                                                                                                                                                                                                             VPe     �         �       */�         �       * Class: ${1:CursosController}�         �       �         �    5�_�   1   3           2           ����                                                                                                                                                                                                                                                                                                                                                 V       VPe   + �                "    public function __construct(){       }    5�_�   2   4           3          ����                                                                                                                                                                                                                                                                                                                                                v       VPe2   , �         �           * @return Response�         �    5�_�   3   6           4   (       ����                                                                                                                                                                                                                                                                                                                                         &       v       VPe8     �   *   ,   �           */�   (   *   �           * ${1:showAll}�   '   ,   �       �   '   )   �    5�_�   4   7   5       6   *       ����                                                                                                                                                                                                                                                                                                                            )          )          v       VPe>   - �   *   ,   �           * �   *   ,   �    5�_�   6   8           7   +       ����                                                                                                                                                                                                                                                                                                                            )          )          v       VPeA     �   *   ,   �           * @return �   +   ,   �    5�_�   7   9           8   +       ����                                                                                                                                                                                                                                                                                                                            )          )          v       VPeF     �   *   +               * @return showAll5�_�   8   :           9   *       ����                                                                                                                                                                                                                                                                                                                            )          )          v       VPeH   . �   *   ,   �           * �   *   ,   �    5�_�   9   =           :   +       ����                                                                                                                                                                                                                                                                                                                            )          )          v       VPeP   / �   *   ,   �           * @return �   +   ,   �    5�_�   :   >   <       =   <       ����                                                                                                                                                                                                                                                                                                                            <          <          v       VPei     �   ;   =   �           * @return Response5�_�   =   ?           >   <       ����                                                                                                                                                                                                                                                                                                                            <          <          v       VPez     �   ;   =   �           * @return �   <   =   �    5�_�   >   @           ?   G       ����                                                                                                                                                                                                                                                                                                                            G          G          v       VPe}     �   F   H   �           * @return Response�   G   H   �    5�_�   ?   A           @   W       ����                                                                                                                                                                                                                                                                                                                            W          W          v       VPe�     �   V   X   �           * @return Response�   W   X   �    5�_�   @   B           A   V       ����                                                                                                                                                                                                                                                                                                                            W          W   &       v       VPe�   0 �   V   X   �    5�_�   A   C           B   e        ����                                                                                                                                                                                                                                                                                                                                      �          V       VPe�   1 �   �   �              �   �   �                    }�   �   �                      }�   �   �          '              $respostas_corretas += 1;�   �   �          -            if ($correta == $questao_atual) {�   �   �                      s($questao_atual);�   �   �                      s($correta);�   �   �          u            $questao_atual = (int) (isset($marker['extras']['opcao_atual']) ? $marker['extras']['opcao_atual'] : -1);�   �   �          <            $correta = (int) $marker['extras']['escolhido'];�   �   �          4          if($marker['tipo'] == 'element_question'){�   �   �          
          �   �   �          !          $element_question += 1;�   �   �                      abort(500);�   g   i          5                return response()->json($error, 500);�   f   h                          ];�   e   g          c                    'mensagem' => 'Erro ao verificar a sessão, verifique o acesso com o seu LMS.',�   d   f                          $error = [5�_�   B   D           C   m        ����                                                                                                                                                                                                                                                                                                                                      �          V       VPe�   2 �   l   n   �           �   m   o   �              �   m   o   �    5�_�   C   E           D   �        ����                                                                                                                                                                                                                                                                                                                                      �          V       VPe�   4 �   �   �   �           * �   �   �   �    5�_�   D   F           E   �        ����                                                                                                                                                                                                                                                                                                                                                             VPk�   5 �   �   �   �              �   �   �   �    5�_�   E   G           F   �       ����                                                                                                                                                                                                                                                                                                                                                             VPk�     �   �   �                  $curso::5�_�   F   H           G   �        ����                                                                                                                                                                                                                                                                                                                                                             VPk�   6 �   �   �   �              �   �   �   �    5�_�   G   I           H   �       ����                                                                                                                                                                                                                                                                                                                                                             VPk�   7 �   �   �                  App\Curso::getLti5�_�   H   J           I   �        ����                                                                                                                                                                                                                                                                                                                                                             VPk�   8 �   �   �   �              �   �   �   �    5�_�   I   K           J   �        ����                                                                                                                                                                                                                                                                                                                                                             VPk�   9 �   �   �                  Curso->id5�_�   J   L           K            ����                                                                                                                                                                                                                                                                                                                                                             VPk�   : �       "   �                  �       "   �    5�_�   K   M           L   !       ����                                                                                                                                                                                                                                                                                                                                                             VPl   ; �       !                      flash()->info5�_�   L   N           M          ����                                                                                                                                                                                                                                                                                                                                                             VPn�   < �          �              �          �    5�_�   M   O           N          ����                                                                                                                                                                                                                                                                                                                                                             VPn�     �                        Curso::5�_�   N   P           O           ����                                                                                                                                                                                                                                                                                                                                                             VPn�   = �          �              �          �    5�_�   O               P          ����                                                                                                                                                                                                                                                                                                                                                             VPn�   > �                        flash()->5�_�   :       ;   =   <   <        ����                                                                                                                                                                                                                                                                                                                            <          <          v       VPee     �   <   =   �    �   <   =   �           * @return showAll5�_�   :           <   ;   <       ����                                                                                                                                                                                                                                                                                                                            <          <   $       v       VPe^     �   <   =   �    �   ;   =   �      %     * @return      * @return showAll5�_�   4           6   5   )       ����                                                                                                                                                                                                                                                                                                                            )          )          v       VPe;     �   (   *   �           * J5�_�                    e   H    ����                                                                                                                                                                                                                                                                                                                            e          e          V       VA B     �   d   i        5�_�                    Z       ����                                                                                                                                                                                                                                                                                                                                                             V8��     �   Z   [   �              �   Z   \   �      
          5��