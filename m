Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0C32707A8
	for <lists+tipc-discussion@lfdr.de>; Fri, 18 Sep 2020 22:59:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kJNTR-0005FI-9J; Fri, 18 Sep 2020 20:59:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1kJNTP-0005F2-8J
 for tipc-discussion@lists.sourceforge.net; Fri, 18 Sep 2020 20:59:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TpphWfsF2bAsysR+iS786CIcT7mYglQLZCsUb3SlT2E=; b=SR4uw0KCg2l8tdT2BwaGot2Yd6
 8+IBu2TNxpm+Ho2pLXv4coe01uEctfPH4NCLkbVsnhsMMWLsvXOBqZAcW28bsc1Cza01BTcUfKwf2
 plgulvcWxJBL7VP/SS2DSQIRzXhnLGNZVgR4zOAoou2LIuDQtWhNPALj/uo57WibNrEU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TpphWfsF2bAsysR+iS786CIcT7mYglQLZCsUb3SlT2E=; b=P2P3WKn2+vdyxlTvBnVmYtJxz7
 wfmRvSyOZrzjXqd84nfWG8Q3Lk66Hev5BOTB1J8rGPiI6lTBmhz1Hr9hD0KgeHO54nLIyB+bJ0nxc
 yLMQXgkzWoI3IdkQ9V4KchQ89t8xeYUGCXoeuDTfUSoMdNR0LVABXI7KP/04QZfPFsRo=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kJNTJ-00EewE-0j
 for tipc-discussion@lists.sourceforge.net; Fri, 18 Sep 2020 20:59:15 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 00A0F15932242;
 Fri, 18 Sep 2020 13:42:11 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:58:58 -0700 (PDT)
Message-Id: <20200918.135858.1501075167621870462.davem@davemloft.net>
To: tuong.t.lien@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200918011729.30146-1-tuong.t.lien@dektech.com.au>
References: <20200918011729.30146-1-tuong.t.lien@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [2620:137:e000::1:9]);
 Fri, 18 Sep 2020 13:42:12 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kJNTJ-00EewE-0j
Subject: Re: [tipc-discussion] [net-next v3 0/4] tipc: add more features to
 TIPC encryption
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
Cc: tipc-discussion@lists.sourceforge.net, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Tuong Lien <tuong.t.lien@dektech.com.au>
Date: Fri, 18 Sep 2020 08:17:25 +0700

> This series adds some new features to TIPC encryption:
> 
> - Patch 1 ("tipc: optimize key switching time and logic") optimizes the
> code and logic in preparation for the following commits.
> 
> - Patch 2 ("tipc: introduce encryption master key") introduces support
> of 'master key' for authentication of new nodes and key exchange. A
> master key can be set/changed by user via netlink (eg. using the same
> 'tipc node set key' command in iproute2/tipc).
> 
> - Patch 3 ("tipc: add automatic session key exchange") allows a session
> key to be securely exchanged between nodes as needed.
> 
> - Patch 4 ("tipc: add automatic rekeying for encryption key") adds
> automatic 'rekeying' of session keys a specific interval. The new key
> will be distributed automatically to peer nodes, so become active then.
> The rekeying interval is configurable via netlink as well.
> 
> v2: update the "tipc: add automatic session key exchange" patch to fix
> "implicit declaration" issue when built without "CONFIG_TIPC_CRYPTO".
> 
> v3: update the patches according to David comments by using the
> "genl_info->extack" for messages in response to netlink user config
> requests.

Series applied, thanks.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
