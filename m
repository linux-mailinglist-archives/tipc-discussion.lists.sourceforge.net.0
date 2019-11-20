Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1DA1044C5
	for <lists+tipc-discussion@lfdr.de>; Wed, 20 Nov 2019 21:08:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iXWH9-00036b-8D; Wed, 20 Nov 2019 20:08:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1iXWH6-00036T-3b
 for tipc-discussion@lists.sourceforge.net; Wed, 20 Nov 2019 20:08:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gfh66NCsjhdPmroVVCLXY+isYSE/MJ8rSXnb2qA7pjg=; b=bQwf/DHcuI09ANhvcA+pQismZh
 wUhKjRPyccaUvvGkG+YOxDCa7XScpQZczgOARVMlzvo5OY9dEpTXD405LKY6aIhP38rZOr3AQNrWz
 +Wv/8hQk3dIZ6orgBZJcemfZf2AM6vk/csjwdhtS8/hwczXBwEsnOz9pCfD/iOvWj6Rg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gfh66NCsjhdPmroVVCLXY+isYSE/MJ8rSXnb2qA7pjg=; b=LvY65KrnYQHN8V4xoXt2s52v5E
 ZO5Hh1DIJNTeEgSUzWgOkUTzv9rE1r86zJs5Y0n4t0H9d52qCA1X90VuN7KgvTtntnMDoGPC7e+SR
 opbprv7Xtshm8Nds445vcYyS7QHAk6E0paw9qX1ryoyZELBuen1+iuhJGN/rXUEWMTM8=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iXWH4-007ZiH-Lm
 for tipc-discussion@lists.sourceforge.net; Wed, 20 Nov 2019 20:08:28 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 6584714C1A0C0;
 Wed, 20 Nov 2019 12:08:10 -0800 (PST)
Date: Wed, 20 Nov 2019 12:08:09 -0800 (PST)
Message-Id: <20191120.120809.1526734581965504532.davem@davemloft.net>
To: tuong.t.lien@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191120021519.2690-1-tuong.t.lien@dektech.com.au>
References: <20191120021519.2690-1-tuong.t.lien@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 20 Nov 2019 12:08:10 -0800 (PST)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iXWH4-007ZiH-Lm
Subject: Re: [tipc-discussion] [net-next] tipc: support in-order name
 publication events
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
Date: Wed, 20 Nov 2019 09:15:19 +0700

> @@ -277,6 +283,17 @@ static struct publication *tipc_service_remove_publ(struct service_range *sr,
>  	return NULL;
>  }
>  
> +#define publication_after(pa, pb) (((int)((pb)->id - (pa)->id) < 0))

We have enough of these things, please use existing interfaces such
as time32_after() et al.

Thank you.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
