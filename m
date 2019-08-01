Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC357E53F
	for <lists+tipc-discussion@lfdr.de>; Fri,  2 Aug 2019 00:15:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1htJM6-0005Ay-6f; Thu, 01 Aug 2019 22:15:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1htJM5-0005Al-AN
 for tipc-discussion@lists.sourceforge.net; Thu, 01 Aug 2019 22:15:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6Gdvl1M/luW54GYkHIs3SPr6ULelgEvVHe6O5yMMnyI=; b=VtVVFubU3bIHkcLVrTwjFISz25
 TACp2d3NpwN6b68ASH4XrIXic2OFeSCMVQJCK+McUvm3DrLVuJw23KYGqw79MIfRYqKGT82HeU4pm
 BHfwEngaqx+66RuiGmMppZLqsRI+UfFfom7jjGmQUKxESpU/nWQv9XQo/r779BZnC7Iw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6Gdvl1M/luW54GYkHIs3SPr6ULelgEvVHe6O5yMMnyI=; b=LMVt7pt5//8ZS08oobYSvmHUcX
 1Av+r8Ll+JZmv53cI9VXNQ7tCmdKhQwRVJePAPcwq2CfZnlpeXnUyx03YsmZ0y/TLFcB6a28ITPUT
 Hxa00SbUYcnLoW/bI3PXQKMTzsR+awdEqMBPzAwbL34ABq+qpfRYan6Fzk4Q8M7fm4jU=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1htJM3-007SKh-Vh
 for tipc-discussion@lists.sourceforge.net; Thu, 01 Aug 2019 22:15:25 +0000
Received: from localhost (unknown [172.58.27.22])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 6D5B915434E2B;
 Thu,  1 Aug 2019 15:15:14 -0700 (PDT)
Date: Thu, 01 Aug 2019 18:15:08 -0400 (EDT)
Message-Id: <20190801.181508.657295078853071495.davem@davemloft.net>
To: takondra@cisco.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190729221507.48893-1-takondra@cisco.com>
References: <20190729221507.48893-1-takondra@cisco.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 01 Aug 2019 15:15:15 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: cisco.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1htJM3-007SKh-Vh
Subject: Re: [tipc-discussion] [PATCH] tipc: compat: allow tipc commands
 without arguments
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
 stable@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 xe-linux-external@cisco.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Taras Kondratiuk <takondra@cisco.com>
Date: Mon, 29 Jul 2019 22:15:07 +0000

> Commit 2753ca5d9009 ("tipc: fix uninit-value in tipc_nl_compat_doit")
> broke older tipc tools that use compat interface (e.g. tipc-config from
> tipcutils package):
 ...
> This patch relaxes the original fix and rejects messages without
> arguments only if such arguments are expected by a command (reg_type is
> non zero).
> 
> Fixes: 2753ca5d9009 ("tipc: fix uninit-value in tipc_nl_compat_doit")
> Signed-off-by: Taras Kondratiuk <takondra@cisco.com>
> ---
> The patch is based on v5.3-rc2.

Applied and queued up for -stable.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
