<section class="pre-footer">
  <div class="container">
    <p>Shaft Wallet does not hold your keys for you. We cannot access accounts, recover keys, reset passwords, nor reverse transactions. Protect your keys &amp; always check that you are on correct URL. You are responsible for your security.
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

		<p><a target="_blank" rel="noopener" role="link" tabindex="0" href="https://bitcointalk.org/index.php?topic=2153788.0">BTT Thread</a></p>
		<p><a target="_blank" rel="noopener" role="link" tabindex="0" href="https://telegram.me/shaftsh">Telegram</a></p>
		<p><a target="_blank" rel="noopener" role="link" tabindex="0" href="https://twitter.com/Shaft_sh">Twitter</a></p>
		<p><a target="_blank" rel="noopener" role="link" tabindex="0" href="https://join.slack.com/t/shaftsh/shared_invite/enQtMjQ0MDY0NDAxNDc3LWQ5ZWZmNTdhN2Y2NGJjNzc1MGZiMDhmYmI2NDQxNzc0OTM5MDJjOGUzOTY3NzRkYzI0MTExNDQ5YmQ1NTQyNjY">Slack</a></p>
		<p><a target="_blank" rel="noopener" role="link" tabindex="0" href="https://github.com/shaftsh">Github</a></p>
		<p><a target="_blank" rel="noopener" role="link" tabindex="0" href="mailto:core@shaft.sh">E-mail</a></p>

    </section>

  </article>

</div>


</footer>

@@if (site === 'mew' ) { @@include( './footer-disclaimer-modal.tpl',   { "site": "mew" } ) }
@@if (site === 'cx'  ) { @@include( './footer-disclaimer-modal.tpl',   { "site": "cx"  } ) }

</main>
</body>
</html>
