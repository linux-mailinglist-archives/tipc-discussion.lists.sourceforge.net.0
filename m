Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE6720F37
	for <lists+tipc-discussion@lfdr.de>; Thu, 16 May 2019 21:26:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hRM14-0004hq-Hu; Thu, 16 May 2019 19:26:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hRM13-0004hi-Gt
 for tipc-discussion@lists.sourceforge.net; Thu, 16 May 2019 19:26:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hWvn+2fm3IO1P+VUU+gjRBsu97OO7RKkSzTNbbVtWV8=; b=ZZOj5OC2E8A4Myrs4BCs4a2OcQ
 h5vPxTJvxM+rR0yadlEnEO8ZQakdY6H3/MfdGv/d2P9lCqTqIHPlxNstnarSZWH2g1RGxtM7gQIVQ
 bW0zV59x3XdJHWVIlRGcoTeYv589Sa1J4S2EqYlF6eVrHxEJKbOlpsLTbnpEFX2E0ePw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hWvn+2fm3IO1P+VUU+gjRBsu97OO7RKkSzTNbbVtWV8=; b=T5+Dt4tc5RSSOgyQyWXNTpWb/b
 MtNR9X9nyj6uawIqfPwaeMY9s34kBKhV9zFrFD8nDZAadBNZRgEXz/OhxpQvrlZtnsVUiDjktGc1H
 UttztQoUDHvgXBLnOJVeYk8qDPJQNqJiQJ9wRUzmaV/TqnyYa3gGpKT5msNWgytnSTA8=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hRM11-001GsC-Ao
 for tipc-discussion@lists.sourceforge.net; Thu, 16 May 2019 19:26:09 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 63421133E97B3;
 Thu, 16 May 2019 12:25:58 -0700 (PDT)
Date: Thu, 16 May 2019 12:25:57 -0700 (PDT)
Message-Id: <20190516.122557.1330236058135894100.davem@davemloft.net>
To: hujunwei4@huawei.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <6674f2cd-53bc-bb9a-931e-d4dde6ef01e8@huawei.com>
References: <6674f2cd-53bc-bb9a-931e-d4dde6ef01e8@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 16 May 2019 12:25:58 -0700 (PDT)
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
X-Headers-End: 1hRM11-001GsC-Ao
Subject: Re: [tipc-discussion] [PATCH] tipc: switch order of device
 registration to fix a crash
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
Cc: netdev@vger.kernel.org, wangxiaogang3@huawei.com, mingfangsen@huawei.com,
 wangwang2@huawei.com, tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: hujunwei <hujunwei4@huawei.com>
Date: Thu, 16 May 2019 10:51:15 +0800

> From: Junwei Hu <hujunwei4@huawei.com>
> 
> When tipc is loaded while many processes try to create a TIPC socket,
> a crash occurs:
>  PANIC: Unable to handle kernel paging request at virtual
>  address "dfff20000000021d"
>  pc : tipc_sk_create+0x374/0x1180 [tipc]
>  lr : tipc_sk_create+0x374/0x1180 [tipc]
>    Exception class = DABT (current EL), IL = 32 bits
>  Call trace:
>   tipc_sk_create+0x374/0x1180 [tipc]
>   __sock_create+0x1cc/0x408
>   __sys_socket+0xec/0x1f0
>   __arm64_sys_socket+0x74/0xa8
>  ...
> 
> This is due to race between sock_create and unfinished
> register_pernet_device. tipc_sk_insert tries to do
> "net_generic(net, tipc_net_id)".
> but tipc_net_id is not initialized yet.
> 
> So switch the order of the two to close the race.
> 
> This can be reproduced with multiple processes doing socket(AF_TIPC, ...)
> and one process doing module removal.
> 
> Fixes: a62fbccecd62 ("tipc: make subscriber server support net namespace")
> Signed-off-by: Junwei Hu <hujunwei4@huawei.com>
> Reported-by: Wang Wang <wangwang2@huawei.com>
> Reviewed-by: Xiaogang Wang <wangxiaogang3@huawei.com>

Applied and queued up for -stable.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
