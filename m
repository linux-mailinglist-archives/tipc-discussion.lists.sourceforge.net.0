Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17DB34F920
	for <lists+tipc-discussion@lfdr.de>; Sun, 23 Jun 2019 01:55:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hepqU-00019O-IT; Sat, 22 Jun 2019 23:54:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hepqT-00019G-Az
 for tipc-discussion@lists.sourceforge.net; Sat, 22 Jun 2019 23:54:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w51779LFM4Bz44tQkSh/smIMnqRBD2xCGgIVEbRlmNU=; b=XWu+zmC1mYAdZunIjDhnOMNcxq
 PU+8CbxMH6M2/Uq8UUtgVsL9TJ2GIcblLaKgUEprnAIyHW0nnhy3XUFP2TEJsiCcsybeUMZv5pyxr
 BXyhXsjdQycs+GCUQnrlZko1tJMhkLSlChu5+qMNiKn5NJ4/2Z7aadfDZdk44+R8JzcU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=w51779LFM4Bz44tQkSh/smIMnqRBD2xCGgIVEbRlmNU=; b=AVTlcchymnuGvIMwwUwCOxoJdK
 8hCUbpG0YhI99SJHCC0wm5v31tEoATT6iCeiuAXwdzIVXyNI8FNp45ZVVnCFmC9N6blLHcDF0RStu
 LrO9KFqmsTYsErZ6MbVJikWpkKFbTy1cHA99cyiklwKLEf4RsmL3zYfmySUumRZubKBA=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hepqU-005TCK-TS
 for tipc-discussion@lists.sourceforge.net; Sat, 22 Jun 2019 23:54:59 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 87A6F1540C17D;
 Sat, 22 Jun 2019 16:54:51 -0700 (PDT)
Date: Sat, 22 Jun 2019 16:54:51 -0700 (PDT)
Message-Id: <20190622.165451.1834907805634183167.davem@davemloft.net>
To: lucien.xin@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <0ea2e8519f14d5c9e7bb7ba82a5be371bd4cb9ab.1561028621.git.lucien.xin@gmail.com>
References: <0ea2e8519f14d5c9e7bb7ba82a5be371bd4cb9ab.1561028621.git.lucien.xin@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 22 Jun 2019 16:54:51 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hepqU-005TCK-TS
Subject: Re: [tipc-discussion] [PATCH net] tipc: add dst_cache support for
 udp media
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
Cc: netdev@vger.kernel.org, pabeni@redhat.com,
 tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Xin Long <lucien.xin@gmail.com>
Date: Thu, 20 Jun 2019 19:03:41 +0800

> As other udp/ip tunnels do, tipc udp media should also have a
> lockless dst_cache supported on its tx path.
> 
> Here we add dst_cache into udp_replicast to support dst cache
> for both rmcast and rcast, and rmcast uses ub->rcast and each
> rcast uses its own node in ub->rcast.list.
> 
> Signed-off-by: Xin Long <lucien.xin@gmail.com>

I'll apply this to net-next after the next net --> net-next
marge since it depends upon the register_pernet_device change.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
