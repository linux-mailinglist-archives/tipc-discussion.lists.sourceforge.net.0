Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8C021D93
	for <lists+tipc-discussion@lfdr.de>; Fri, 17 May 2019 20:41:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hRhnI-0004BF-US; Fri, 17 May 2019 18:41:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hRhnH-0004Ax-F4
 for tipc-discussion@lists.sourceforge.net; Fri, 17 May 2019 18:41:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CjOuKeRusKw8GDeIXvyCUGuAvNpzPEgLpIvpyO0fxlo=; b=M5DnmNMH2TGNdHYByF7XG9s58E
 tBxT0V6NmCHFKGutuYCtxaXDshkFDBW2wcYDiFu/Y16YfuMr0JhmjLbVhay5C0zzoc3V/t39VzSlv
 fHT8RRpHy7ITvKKztoMXzAGoWEpi+astahJTzFV30HLYeIBG0u4e9nGtBJBYDLw5izSA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CjOuKeRusKw8GDeIXvyCUGuAvNpzPEgLpIvpyO0fxlo=; b=RFNbz+j+XwxJm1oxkf9ER81Zk+
 1lzlgwP82DPev/F19jJYCmRsjBhgVgf2AXuXIQFI3gTxP7RUWM3XES4GmFEpGB1lTZ8w+dp58a1ow
 qMxKHHsA9pv64Z1DWH+TAHNptpGAU3uoV8xCwklv9HxmYeu0O22apHmh4M4fb01iZ3m8=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hRhnF-008y7x-5E
 for tipc-discussion@lists.sourceforge.net; Fri, 17 May 2019 18:41:22 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4710F13F18517;
 Fri, 17 May 2019 11:41:15 -0700 (PDT)
Date: Fri, 17 May 2019 11:41:14 -0700 (PDT)
Message-Id: <20190517.114114.617879749254144661.davem@davemloft.net>
To: hujunwei4@huawei.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <efa87f26-8766-ac92-ccaa-23a6992bd32a@huawei.com>
References: <efa87f26-8766-ac92-ccaa-23a6992bd32a@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 17 May 2019 11:41:15 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hRhnF-008y7x-5E
Subject: Re: [tipc-discussion] [PATCH] tipc: fix modprobe tipc failed after
 switch order of device registration
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
Cc: zhoukang7@huawei.com, mousuanming@huawei.com, netdev@vger.kernel.org,
 mingfangsen@huawei.com, linux-kernel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: hujunwei <hujunwei4@huawei.com>
Date: Fri, 17 May 2019 19:27:34 +0800

> From: Junwei Hu <hujunwei4@huawei.com>
> 
> Error message printed:
> modprobe: ERROR: could not insert 'tipc': Address family not
> supported by protocol.
> when modprobe tipc after the following patch: switch order of
> device registration, commit 7e27e8d6130c
> ("tipc: switch order of device registration to fix a crash")
> 
> Because sock_create_kern(net, AF_TIPC, ...) is called by
> tipc_topsrv_create_listener() in the initialization process
> of tipc_net_ops, tipc_socket_init() must be execute before that.
> 
> I move tipc_socket_init() into function tipc_init_net().
> 
> Fixes: 7e27e8d6130c
> ("tipc: switch order of device registration to fix a crash")
> Signed-off-by: Junwei Hu <hujunwei4@huawei.com>
> Reported-by: Wang Wang <wangwang2@huawei.com>
> Reviewed-by: Kang Zhou <zhoukang7@huawei.com>
> Reviewed-by: Suanming Mou <mousuanming@huawei.com>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
