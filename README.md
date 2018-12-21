# site-explorer-module

## Prerequisites
<ul>
	<li><a target="_blank" href="https://getbootstrap.com/">Boostrap4</a></li>
	<li><a target="_blank" href="https://fontawesome.com/">FontAwesome5</a></li>
	<li><a target="_blank" href="https://cloud.google.com/maps-platform/">Google Maps</a></li>
</ul>

## Step 1: Add the Form
 - site-explorer-form.tpl

Create a calendar for the Site Explorer and upload the following form.

```
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

```

## Step 2: Add the Repeater
 - site-explorer-repeater.tpl

Add the following repeater shortcode. This should be placed within a <ul> tag in the navigation, and be shown when hovered. 

```
<li class="text-uppercase mb-0">
  <div class="dropdown position-absolute w-md-550p w-xl-600p bg-primary right-0 p-2 px-md-5 pb-md-5 pt-md-4 site-explorer">
    <div class="row">
      <div class="col-md-6">
        <ul class="pl-0 list-unstyled">

          [repeater id='6' limit="0,2" order="start_time desc" display_type="news" where="post_status='Published'"]
          [is_set value={{quick_title}}]
          	<li class="mb-0 text-black"><a class="px-2 px-lg-3 text-white d-block w-100 h-100" href="{{quick_ref}}">{{quick_title}}</a></li>
          [/is_set]
          [is_empty value={{quick_title}}]
          	<li class="mb-0 text-black"><a class="px-2 px-lg-3 text-white d-block w-100 h-100" href="{{quick_ref}}">{{event_title}}</a></li>
          [/is_empty]

          [/repeater]

        </ul>
      </div>
      <div class="col-md-6">
        <ul class="pl-0 list-unstyled">
          [repeater id='6' limit="3,2" order="start_time desc" display_type="news" where="post_status='Published'"]
          [is_set value={{quick_title}}]
          	<li class="mb-0 text-black"><a class="px-2 px-lg-3 text-white d-block w-100 h-100" href="{{quick_ref}}">{{quick_title}}</a></li>
          [/is_set]
          [is_empty value={{quick_title}}]
          	<li class="mb-0 text-black"><a class="px-2 px-lg-3 text-white d-block w-100 h-100" href="{{quick_ref}}">{{event_title}}</a></li>
          [/is_empty]
          [/repeater]
        </ul>
      </div>
      <div class="col-sm-12 text-center mt-4">
        <a class="btn btn-white btn-lg d-none d-md-block" href="/search.stml">I want to find something else</a>
      </div>
    </div>
  </div>
</li>

```


## Step 4: Add the SCSS/CSS
 - /_/js/site-explorer.scss
 
 ```
 
.site-explorer {
    opacity: 1;
    top: 100%;
    line-height: 2.8;
    z-index: 1000;
    transition: 1000;
}
nav .navbar-nav li:hover .dropdown {
    opacity: 1;
    pointer-events: auto;
    visibility: visible;
}
@media screen and (min-width: 768px) {
    .w-md-550p {
        width: 550px !important;
    }
}
@media screen and (min-width: 1200px) {
    .w-xl-600p {
        width: 600px !important;
    }
}

 ```
