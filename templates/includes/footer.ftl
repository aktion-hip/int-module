[#assign root = cmsfn.root(content, "mgnl:page")!content ]
<div id="footer">
    <!-- Icons -->   
    <ul class="icons">
        [#if root.socX?has_content]
            <li><a href="${root.socX!}" class="social-icon-x">
                <span class="social-label">&nbsp;</span>
            </a></li>
        [/#if]
        [#if root.socGithub?has_content]
            <li><a href="${root.socGithub!}" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
        [/#if]
        [#if root.socFacebook?has_content]
            <li><a href="${root.socFacebook!}" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
        [/#if]
        [#if root.socLinkedin?has_content]
            <li><a href="${root.socLinkedin!}" class="icon brands fa-linkedin-in"><span class="label">LinkedIn</span></a></li>
        [/#if]
        [#if root.socInstagram?has_content]
            <li><a href="${root.socInstagram!}" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
        [/#if]
    </ul> 
    <!-- Copyright -->   
    <div class="copyright">
        <ul class="menu">
            <li>© BBN Integrated Ltd. All rights reserved</li>
        </ul>
    </div>
</div>