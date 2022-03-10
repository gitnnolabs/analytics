## coding: utf-8
<%inherit file="central_container_for_article_filters.mako"/>

<%block name="central_container">
    <div class="row container-fluid">
        <div class="row">
            <h3>${_(u'Composição da coleção')}</h3>
        </div>
        <div class="col-md-3">
          <%include file="publication_size_journals.mako"/>
        </div>
        <div class="col-md-3">
          <%include file="publication_size_issues.mako"/>
        </div>
        <div class="col-md-3">
          <%include file="publication_size_documents.mako"/>
        </div>
        <div class="col-md-3">
          <%include file="publication_size_citations.mako"/>
        </div>
    </div>
    <div class="row container-fluid" style="margin-top: 100px;">
        <div class="row">
            <h3>${_(u'Gráficos')}</h3>
        </div>
        ## Garante que seja apresentado somente o gráfico do Sushi para a coleção
        ## Brasil
        % if selected_collection_code == 'scl':
          <div class="col-md-12">
              <%include file="usage_cr_j1.mako"/>
          </div>
        % else:
          <div class="col-md-12">
              <%include file="access_by_month_and_year.mako"/>
          </div>
        % endif
        <div class="col-md-12">
            <%include file="publication_article_affiliations_map.mako"/>
        </div>
    </div>
</%block>