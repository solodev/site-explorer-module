<div class="panel-group">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title"><a aria-expanded="true" data-toggle="collapse" href="#collapseStatus">Post Status<span
            class="toggle" aria-hidden="true"></span></a></h4>
    </div>

    <div class="panel-collapse collapse in" id="collapseStatus">
      <div class="panel-body">
        <div class="row">
          <div class="col-md-6">
            <h2><label class="label-control" for="post_status">Post Status</label></h2>
            <select class="form-control" name="post_status" type="text">
              <option value="Draft">Draft</option>
              <option value="Published">Published</option>
            </select>
          </div>

          <div class="col-md-6">
            <h2><label class="label-control" for="post_featured">Featured</label></h2>

            <p class="subText">If set to "Yes", the Quick Link will be featured in the top navigation and homepage.</p>
            <select class="form-control" name="post_featured" type="text">
              <option value="Yes">Yes</option>
              <option value="No">No</option>
            </select>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="panel-group">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title"><a aria-expanded="true" data-toggle="collapse" href="#collapseQuick">Quicklink Details<span
            class="toggle" aria-hidden="true"></span></a></h4>
    </div>

    <div class="panel-collapse collapse in" id="collapseQuick">
      <div class="panel-body">
        <div class="row">
          <div class="col-md-6">
            <h2><label class="label-control" for="quick_title">Quicklink Title</label></h2>

            <p class="subText">The publicly viewable title.</p>
            <input class="form-control" id="quick_title" name="quick_title" type="text" />
          </div>

          <div class="col-md-6">
            <h2><label class="label-control" for="quick_ref">Quicklink Link</label></h2>

            <p class="subText">The link URL (use relative links for internal links).</p>
            <input class="form-control" id="quick_ref" name="quick_ref" type="text" />
          </div>
        </div>
        <div class="row">
          <div class="col-md-6">
            <h2><label class="label-control" for="quick_external">Quicklink External</label></h2>

            <p class="subText">Does the link go to some web page off of the site?</p>
            <select class="form-control" id="quick_external" name="quick_external" type="text">
              <option value="Yes">Yes</option>
              <option value="No">No</option>
            </select>
          </div>

        
        </div>
      </div>
    </div>
  </div>
</div>


<div class="panel-group">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title"><a data-toggle="collapse" href="#collapseAdvanced">Advanced <span class="toggle"
            aria-hidden="true"></span></a></h4>
    </div>

    <div class="panel-collapse collapse" id="collapseAdvanced">
      <div class="panel-body">
        <div class="row">
          <div class="col-md-12">
            <h2><label class="label-control" for="post_javascript">Custom JavaScript</label></h2>

            <p class="subText">(Optional) Use the following textbox to embed any custom JavaScript including tracking
              pixels and Google Analytics scripts. Be sure to open your JavaScript with a &lt;script&gt; tag and close
              everything with a &lt;/script&gt; tag.</p>
            <textarea class="form-control" id="post_javascript" name="post_javascript"></textarea>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<script>
  $('.wysiwyg').ckeditor(function () {}, {
    customConfig: '/CK/config.js',
    height: '600px',
    basePath: '/CK/',
    toolbar: 'WP'
  });
</script>