Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 981A82699D6
	for <lists+tipc-discussion@lfdr.de>; Tue, 15 Sep 2020 01:41:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kHy67-0000xY-DI; Mon, 14 Sep 2020 23:41:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1kHy66-0000xP-7D
 for tipc-discussion@lists.sourceforge.net; Mon, 14 Sep 2020 23:41:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mpxP5CE1eKJLNyQY2lB2jwtpzFXAzdoa9isuz3V3do8=; b=kz0qwhd3uP5Ds5H1g/8kKvWzrG
 1pUqMc/f2DdlEeyLkDm6BYYfIGMhypUPFarWxYXY+yfgfYxnbHbBYSqx75K24ZPo6p5y+my9/W279
 jNH9cOaba4DrXqXpRACu529OfkMb+d4bArKy5L9eyD8x/UaJ/MwEeuDNy3vkdJ+VmDiE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mpxP5CE1eKJLNyQY2lB2jwtpzFXAzdoa9isuz3V3do8=; b=LVNwIXP5lYJkeUmrRAVjvDBB65
 CZeqXpmJvaaVNM6FWBtvJ3py6zFFraWpnQ1GlTzzVCZPfiS9KEosEjecxQArcAPSr/tk1kGL/4A2R
 PNsWMz7+2biuhD9sa7ea2HWviqDKPEgNfr1iBuGbNdGgdEahbV9tmJWBYURBAbFmj9kg=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kHy5y-009uiX-Ij
 for tipc-discussion@lists.sourceforge.net; Mon, 14 Sep 2020 23:41:22 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4A801128CAD69;
 Mon, 14 Sep 2020 16:24:17 -0700 (PDT)
Date: Mon, 14 Sep 2020 16:41:03 -0700 (PDT)
Message-Id: <20200914.164103.588605919188301861.davem@davemloft.net>
To: lucien.xin@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <0fcddb2bab6bde5632dcd4889961ebce1ec8bb8f.1599997051.git.lucien.xin@gmail.com>
References: <0fcddb2bab6bde5632dcd4889961ebce1ec8bb8f.1599997051.git.lucien.xin@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [2620:137:e000::1:9]);
 Mon, 14 Sep 2020 16:24:17 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kHy5y-009uiX-Ij
Subject: Re: [tipc-discussion] [PATCH net] tipc: use skb_unshare() instead
 in tipc_buf_append()
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
Cc: netdev@vger.kernel.org, tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Xin Long <lucien.xin@gmail.com>
Date: Sun, 13 Sep 2020 19:37:31 +0800

> In tipc_buf_append() it may change skb's frag_list, and it causes
> problems when this skb is cloned. skb_unclone() doesn't really
> make this skb's flag_list available to change.
> 
> Shuang Li has reported an use-after-free issue because of this
> when creating quite a few macvlan dev over the same dev, where
> the broadcast packets will be cloned and go up to the stack:
  ...
> So fix it by using skb_unshare() instead, which would create a new
> skb for the cloned frag and it'll be safe to change its frag_list.
> The similar things were also done in sctp_make_reassembled_event(),
> which is using skb_copy().
> 
> Reported-by: Shuang Li <shuali@redhat.com>
> Fixes: 37e22164a8a3 ("tipc: rename and move message reassembly function")
> Signed-off-by: Xin Long <lucien.xin@gmail.com>

Applied and queued up for -stable, thanks.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
