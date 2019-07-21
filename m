Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F146F4BC
	for <lists+tipc-discussion@lfdr.de>; Sun, 21 Jul 2019 20:43:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hpGna-0001Jx-5m; Sun, 21 Jul 2019 18:43:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hpGnY-0001Jl-Hs
 for tipc-discussion@lists.sourceforge.net; Sun, 21 Jul 2019 18:43:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SEoKuyZMKvFy2PhX5Se9hPvVHta9hcGD5APGZV9n8y8=; b=jWQeVolyuRG6ENbXP3jYSc4oyS
 D0aX7dK4FNk06h+kQIYkG6RoxG1/50yjI3MML7UFe4bQzmGN6m12qt4eg2NI32qNSrLlnPqoy1JbA
 J7lMTVZeM3Ymu9efxJg6tgIoSiqPIZRZuBF8jsj+geDX9IA3FXUH3wuY4aPhujJrdAkY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SEoKuyZMKvFy2PhX5Se9hPvVHta9hcGD5APGZV9n8y8=; b=gu41wv+9Uy4+x0y/H80mzFg3UM
 2Zbbqek/Dylkimr+MxSBwyNmw72nhMzNYSqsPVv0g/emmB4A6NOfpNaE61s74FWs7tsmSfOAvJh6L
 4M3rkefE7yfXbHRH+zYMa+yWxX4q6WOr1J+yi7fi4N2Zbc6T0Hl5Iix2M/yHNlofZvUc=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hpGnU-009Ooj-GY
 for tipc-discussion@lists.sourceforge.net; Sun, 21 Jul 2019 18:43:04 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 8B6C015258BBE;
 Sun, 21 Jul 2019 11:42:51 -0700 (PDT)
Date: Sun, 21 Jul 2019 11:42:50 -0700 (PDT)
Message-Id: <20190721.114250.1893607784895600131.davem@davemloft.net>
To: christophe.jaillet@wanadoo.fr
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190721103811.29724-1-christophe.jaillet@wanadoo.fr>
References: <20190721103811.29724-1-christophe.jaillet@wanadoo.fr>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 21 Jul 2019 11:42:51 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hpGnU-009Ooj-GY
Subject: Re: [tipc-discussion] [PATCH] tipc: Fix a typo
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Date: Sun, 21 Jul 2019 12:38:11 +0200

> s/tipc_toprsv_listener_data_ready/tipc_topsrv_listener_data_ready/
> (r and s switched in topsrv)
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
> The function name could also be removed from the comment. It does not
> bring any useful information IMHO.

Applied, thanks Christophe.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
