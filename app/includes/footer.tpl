<section class="pre-footer">
  <div class="container">
    <p>JOYS Wallet does not hold your keys for you. We cannot access accounts, recover keys, reset passwords, nor reverse transactions. Protect your keys &amp; always check that you are on correct URL. You are responsible for your security.
    </p>
  </div>
</section>

<footer class="footer" role="content" aria-label="footer" ng-controller='footerCtrl' >

  <article class="block__wrap" style="max-width: 1780px; margin: auto;">

    <section class="footer--left">

      <a href="/"><img src="images/onw.png" height="45px" width="auto" alt="Shat Wallet" class="footer--logo"/></a>
    </section>

    <section class="footer--cent">

    </section>

    <section class="footer--righ">

		<p><a target="_blank" rel="noopener" role="link" tabindex="0" href="https://bitcointalk.org">BTT Thread</a></p>
		<p><a target="_blank" rel="noopener" role="link" tabindex="0" href="https://telegram.me/">Telegram</a></p>
		<p><a target="_blank" rel="noopener" role="link" tabindex="0" href="https://twitter.com/">Twitter</a></p>
		<p><a target="_blank" rel="noopener" role="link" tabindex="0" href="https://join.slack.com/t/">Slack</a></p>
		<p><a target="_blank" rel="noopener" role="link" tabindex="0" href="https://github.com/">Github</a></p>
		<p><a target="_blank" rel="noopener" role="link" tabindex="0" href="mailto:team@joys.digital">E-mail</a></p>

    </section>

  </article>

</div>


</footer>

@@if (site === 'mew' ) { @@include( './footer-disclaimer-modal.tpl',   { "site": "mew" } ) }
@@if (site === 'cx'  ) { @@include( './footer-disclaimer-modal.tpl',   { "site": "cx"  } ) }

</main>
</body>
</html>
