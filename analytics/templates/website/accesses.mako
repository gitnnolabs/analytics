## coding: utf-8
<%inherit file="central_container_for_article_filters.mako"/>

<%block name="central_container">
  <%include file="access_datepicker.mako"/>
  <h3>${_(u'Gráfico da evolução de acessos aos documentos')}</h3>
  <center>
    <div class="chart">
      % if selected_journal_code:  
        <%include file="usage_tr_j1.mako"/>
      % else:
        <%include file="usage_cr_j1.mako"/>
      % endif
    </div>
  </center>
  <h3>${_(u'Gráfico de calor de acessos')}</h3>
  <center>
    <div class="chart">
      <%include file="accesses_heat_chart.mako"/>
    </div>
  </center>
  <h3>${_(u'Gráfico de tempo de vida de documentos através do número de acessos')}</h3>
  <center>
    <div class="chart">
      <%include file="access_lifetime.mako"/>
    </div>
  </center>
</%block>

<%block name="extra_js">
</%block>
