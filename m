Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B7325A136
	for <lists+tipc-discussion@lfdr.de>; Wed,  2 Sep 2020 00:11:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kDEUP-0002yc-R9; Tue, 01 Sep 2020 22:10:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1kDEUO-0002yP-Mx
 for tipc-discussion@lists.sourceforge.net; Tue, 01 Sep 2020 22:10:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1JiYHiwbAnkDg1JbGvcsDwN9tN2uqN5Eengenw0zuUs=; b=XaC99Z0f2KlYy3qFSR/9oaGX+z
 J3XY7p1GbUICYQNuuD0VSAhcfMUzHltekQjNNG1nBG4ycDtYO4yZyVKggod68uVaIF+l03+eeZ7Vc
 fkby8GfXBjNyuM3jyU3202VH5Xgjdf07yxKkbB42TFbdX14zZuBagibyi+32M3B2z6vg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1JiYHiwbAnkDg1JbGvcsDwN9tN2uqN5Eengenw0zuUs=; b=ZPVqBCsGIMFBsAnr906Ws4713i
 HGwfcOnqZ5B4m/0JJR493FABg0skzhqWUt6ZxrG/TIHUV7afSLJ4NGmf+y6n/Cu2C+mRBqA9Bajsa
 rvZlMTFw1EEhMClbkJGtYjedqktKDqB2JMFIOmTtzEyJTwK2GBH71KlbV6CTimaJvpNI=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kDEUL-008L5r-Fa
 for tipc-discussion@lists.sourceforge.net; Tue, 01 Sep 2020 22:10:52 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 88C25136564DD;
 Tue,  1 Sep 2020 14:53:44 -0700 (PDT)
Date: Tue, 01 Sep 2020 15:10:28 -0700 (PDT)
Message-Id: <20200901.151028.670408362469941141.davem@davemloft.net>
To: tuong.t.lien@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200831083817.3611-2-tuong.t.lien@dektech.com.au>
References: <20200831083817.3611-1-tuong.t.lien@dektech.com.au>
 <20200831083817.3611-2-tuong.t.lien@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [2620:137:e000::1:9]);
 Tue, 01 Sep 2020 14:53:44 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kDEUL-008L5r-Fa
Subject: Re: [tipc-discussion] [net-next v2 1/4] tipc: optimize key
 switching time and logic
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
Date: Mon, 31 Aug 2020 15:38:14 +0700

> We reduce the lasting time for a pending TX key to be active as well as
> for a passive RX key to be freed which generally helps speed up the key
> switching. It is not expected to be too fast but should not be too slow
> either. Also the key handling logic is simplified that a pending RX key
> will be removed automatically if it is found not working after a number
> of times; the probing for a pending TX key is now carried on a specific
> message user ('LINK_PROTOCOL' or 'LINK_CONFIG') which is more efficient
> than using a timer on broadcast messages, the timer is reserved for use
> later as needed.
> 
> The kernel logs or 'pr***()' are now made as clear as possible to user.
> Some prints are added, removed or changed to the debug-level. The
> 'TIPC_CRYPTO_DEBUG' definition is removed, and the 'pr_debug()' is used
> instead which will be much helpful in runtime.
> 
> Besides we also optimize the code in some other places as a preparation
> for later commits.
> 
> This commit does not change the en/decryption functionalities.
> 
> Acked-by: Jon Maloy <jmaloy@redhat.com>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>

Random log messages in response to user config requests are
inappropriate especially with netlink.

Report such informational responses to errors using the
genl_info->extack instead, as is standard practice across
the entire kernel.

Please remove all kernel log messages that get emitted due to
netlink operations and use extack notifications instead.

I also disagree with the commit message stating:

	This commit does not change the en/decryption functionalities.

You are changing timer lengths and other aspects of crypto behavior,
so the patch is in fact changing things.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
