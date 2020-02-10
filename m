Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E92B15719E
	for <lists+tipc-discussion@lfdr.de>; Mon, 10 Feb 2020 10:25:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1j15Jz-0005Hy-3O; Mon, 10 Feb 2020 09:25:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1j15Jv-0005Ho-4T
 for tipc-discussion@lists.sourceforge.net; Mon, 10 Feb 2020 09:25:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/9befZrpwH4BLlEmqFwNm9v/6eyp6eDT9prd70ip7xQ=; b=lv+pSrU8bSj5K5FhyAtl7nge/g
 hzfhEWyQdfM2KEjjMzspPAMEKctwqLLtqQmdOtKVPppZLl6Jb9ndbwz7i1sIwEQHcQMX0nzep5kuQ
 P+8/gDBfgGdjB7ieqauHiDWaVL0+DYDuzDKXJnU/cRbr/FcdfCLimDNVjq/d5tVMvWKI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/9befZrpwH4BLlEmqFwNm9v/6eyp6eDT9prd70ip7xQ=; b=R8n/JJsL2hh4BeJJ1jI33EmhKa
 L2+77YwZCV7BdXRiUDbJJolybdy9dF9Cjnabi0O4jJ4nBZUlqd3n5DkNBYxdWDnFcfJkEnVhcOciV
 MqK3EpcN5KlBa5psitKKp9ptLrEIf4CpvRcXKcEVFZ8jgdkEoXZG4GgLJEQ/RLnG1HfE=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j15Jt-00H4nS-Uj
 for tipc-discussion@lists.sourceforge.net; Mon, 10 Feb 2020 09:25:35 +0000
Received: from localhost (82-95-191-104.ip.xs4all.nl [82.95.191.104])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 961E31489E0C3;
 Mon, 10 Feb 2020 01:25:22 -0800 (PST)
Date: Mon, 10 Feb 2020 10:24:37 +0100 (CET)
Message-Id: <20200210.102437.1485352276466086047.davem@davemloft.net>
To: chenwandun@huawei.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200210081109.10664-1-chenwandun@huawei.com>
References: <20200210081109.10664-1-chenwandun@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 10 Feb 2020 01:25:24 -0800 (PST)
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j15Jt-00H4nS-Uj
Subject: Re: [tipc-discussion] [PATCH next] tipc: make three functions static
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
 ying.xue@windreiver.com, tipc-discussion@lists.sourceforge.net,
 kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Chen Wandun <chenwandun@huawei.com>
Date: Mon, 10 Feb 2020 16:11:09 +0800

> Fix the following sparse warning:
> 
> net/tipc/node.c:281:6: warning: symbol 'tipc_node_free' was not declared. Should it be static?
> net/tipc/node.c:2801:5: warning: symbol '__tipc_nl_node_set_key' was not declared. Should it be static?
> net/tipc/node.c:2878:5: warning: symbol '__tipc_nl_node_flush_key' was not declared. Should it be static?
> 
> Fixes: fc1b6d6de220 ("tipc: introduce TIPC encryption & authentication")
> Fixes: e1f32190cf7d ("tipc: add support for AEAD key setting via netlink")
> 
> Signed-off-by: Chen Wandun <chenwandun@huawei.com>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
