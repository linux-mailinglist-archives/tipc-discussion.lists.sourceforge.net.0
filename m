Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F229199F
	for <lists+tipc-discussion@lfdr.de>; Sun, 18 Aug 2019 23:01:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hzSIy-00044H-SV; Sun, 18 Aug 2019 21:01:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hzSIw-000443-LW
 for tipc-discussion@lists.sourceforge.net; Sun, 18 Aug 2019 21:01:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HmHUAw0Hp1l85LFxWeyfdAtU3i67d0ZoyLKqQJdaw0U=; b=mJoyZy5jx6xTjBcgiOPbQcyj7D
 ZujV8HLoa2ikY7+SHPR3K22D3ULKsFZH2VQsJQ2jYJHQ2WMc5aYnb9ficm8/uVpbgBoMLHDwCX9vO
 lOT1pO0fpZWiXP5gKbM6zI+hZapTwbzTM795yxoFHX141cn1XcFPqJ0cVbTvusPaXul0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HmHUAw0Hp1l85LFxWeyfdAtU3i67d0ZoyLKqQJdaw0U=; b=NFx1SHu0x/pXMRZ+3uScUABWOu
 hRutjIXeQyH9HEVAB7O4CtbYQxMJk+AM4tih0oRWSXh8guMMkOLvsoHkrbQrws5WTt7Kvd6tF4Sp8
 sonxU+Kq0/JQrG1QGVIyyMCT/qQO2Zabi3tvWdXeiAv0GHZJHEz923aDjx25lZsmHjZs=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hzSIt-0084TT-8K
 for tipc-discussion@lists.sourceforge.net; Sun, 18 Aug 2019 21:01:33 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4033F1264DFDB;
 Sun, 18 Aug 2019 14:01:22 -0700 (PDT)
Date: Sun, 18 Aug 2019 14:01:21 -0700 (PDT)
Message-Id: <20190818.140121.879479854866287427.davem@davemloft.net>
To: jon.maloy@ericsson.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <1565880170-19548-1-git-send-email-jon.maloy@ericsson.com>
References: <1565880170-19548-1-git-send-email-jon.maloy@ericsson.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 18 Aug 2019 14:01:22 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: alliedtelesis.co.nz]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hzSIt-0084TT-8K
Subject: Re: [tipc-discussion] [net-next v2 1/1] tipc: clean up skb list
 lock handling on send path
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
Cc: netdev@vger.kernel.org, lxin@redhat.com, edumazet@google.com,
 tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Jon Maloy <jon.maloy@ericsson.com>
Date: Thu, 15 Aug 2019 16:42:50 +0200

> The policy for handling the skb list locks on the send and receive paths
> is simple.
> =

> - On the send path we never need to grab the lock on the 'xmitq' list
>   when the destination is an exernal node.
> =

> - On the receive path we always need to grab the lock on the 'inputq'
>   list, irrespective of source node.
> =

> However, when transmitting node local messages those will eventually
> end up on the receive path of a local socket, meaning that the argument
> 'xmitq' in tipc_node_xmit() will become the '=EDnputq' argument in  the
> function tipc_sk_rcv(). This has been handled by always initializing
> the spinlock of the 'xmitq' list at message creation, just in case it
> may end up on the receive path later, and despite knowing that the lock
> in most cases never will be used.
> =

> This approach is inaccurate and confusing, and has also concealed the
> fact that the stated 'no lock grabbing' policy for the send path is
> violated in some cases.
> =

> We now clean up this by never initializing the lock at message creation,
> instead doing this at the moment we find that the message actually will
> enter the receive path. At the same time we fix the four locations
> where we incorrectly access the spinlock on the send/error path.
> =

> This patch also reverts commit d12cffe9329f ("tipc: ensure head->lock
> is initialised") which has now become redundant.
> =

> CC: Eric Dumazet <edumazet@google.com>
> Reported-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> Acked-by: Ying Xue <ying.xue@windriver.com>
> Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
