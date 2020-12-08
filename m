Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A102F2D3778
	for <lists+tipc-discussion@lfdr.de>; Wed,  9 Dec 2020 01:20:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kmnDC-0006Hs-9G; Wed, 09 Dec 2020 00:20:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1kmnDA-0006Hg-Ak
 for tipc-discussion@lists.sourceforge.net; Wed, 09 Dec 2020 00:20:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uLGyTFnC8eW0d/BJ3iEIBuZMHUVdiUL6HbEa7Vrlobc=; b=cp1nAVwsEs7IASc/rXeYtoQ7GV
 nbBbGIC8QWS4qUZfC0wVUlwUVMeReVS0QAzznrQTlORYh8bBLbp3sZS04FkZfJ0G+Ga+J0OX1xrBC
 5mz300tnqUWvI7sPTSiIslp4SOD4dDt8ACeaxdlxdnf2wqrmSkAMG5+M1i20XhnZhrfU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uLGyTFnC8eW0d/BJ3iEIBuZMHUVdiUL6HbEa7Vrlobc=; b=HD576IGdUTuai//lf2WSvWoGCA
 nl3D0OhdhqNcagqFQsUch4T6TTBjxczHzhCjLspoFjZmvbxF7BeStL4lDifedRWXdIOEeMK4FlleP
 uMFQfdHIfPF5FhKuF6PsA+HEM5FKJCiHnZxK3PiQXMVlJt1xt7fiEaYmKVl8iZD3njWg=;
Received: from shards.monkeyblade.net ([23.128.96.9] helo=mail.monkeyblade.net)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kmnD3-007AZs-Ou
 for tipc-discussion@lists.sourceforge.net; Wed, 09 Dec 2020 00:20:04 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 by mail.monkeyblade.net (Postfix) with ESMTPSA id A65B84D248DBC;
 Tue,  8 Dec 2020 15:54:55 -0800 (PST)
Date: Tue, 08 Dec 2020 15:54:54 -0800 (PST)
Message-Id: <20201208.155454.2156057383798260135.davem@davemloft.net>
To: cengiz@kernel.wtf
From: David Miller <davem@davemloft.net>
In-Reply-To: <20201207081423.67313-1-cengiz@kernel.wtf>
References: <20201207081423.67313-1-cengiz@kernel.wtf>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail.monkeyblade.net [0.0.0.0]); Tue, 08 Dec 2020 15:54:55 -0800 (PST)
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: kernel.wtf]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1kmnD3-007AZs-Ou
Subject: Re: [tipc-discussion] [PATCH] net: tipc: prevent possible null
 deref of link
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Cengiz Can <cengiz@kernel.wtf>
Date: Mon,  7 Dec 2020 11:14:24 +0300

> `tipc_node_apply_property` does a null check on a `tipc_link_entry`
> pointer but also accesses the same pointer out of the null check block.
> 
> This triggers a warning on Coverity Static Analyzer because we're
> implying that `e->link` can BE null.
> 
> Move "Update MTU for node link entry" line into if block to make sure
> that we're not in a state that `e->link` is null.
> 
> Signed-off-by: Cengiz Can <cengiz@kernel.wtf>
> ---

Applied, thanks.,


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
