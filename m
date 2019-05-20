Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9407E23F57
	for <lists+tipc-discussion@lfdr.de>; Mon, 20 May 2019 19:46:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hSmMV-0001ch-JD; Mon, 20 May 2019 17:46:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hSmMU-0001ca-QH
 for tipc-discussion@lists.sourceforge.net; Mon, 20 May 2019 17:46:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RjulXBquKK3tgidO/RfYfGE86luWGjrUu2WxcaSCfEs=; b=EJFg4bf0uzOVog05QcX1mUsAUP
 72+avKOGy3/fgezPnhWuLbHaG9R/uj3cMTj6RpsYKC+BMkzXzTFL9UuhM2prIIjVrx9Mg92rxSRub
 bgoYiUznQpmFAThepQuynNfdNVeb5w68L5qoFK6CA7VWoLj8wuEUBrA3yPOgLlQF6CRw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RjulXBquKK3tgidO/RfYfGE86luWGjrUu2WxcaSCfEs=; b=HZU3Tq6XBbWol6B6k7CdOMAbU8
 t6ycDWx5rGwwxBe+yCYd/MdqK64btXqFRSiMPeJYY7jWcmPECr94UCC7ckqqhG8bqIzDNSd0XuXhs
 WK8cwIevzqCC4bBOabHog3u3ouPEnD/Dfc+DKy9HgofUWqGVzkzFGuYQI4ycW7wfOzDs=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hSmMS-00BZxo-Vh
 for tipc-discussion@lists.sourceforge.net; Mon, 20 May 2019 17:46:10 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 743BB14EC4685;
 Mon, 20 May 2019 10:45:57 -0700 (PDT)
Date: Mon, 20 May 2019 10:45:54 -0700 (PDT)
Message-Id: <20190520.104554.602275142720021716.davem@davemloft.net>
To: hujunwei4@huawei.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <624f5be3-12b4-cbd4-39e2-5419b976624b@huawei.com>
References: <624f5be3-12b4-cbd4-39e2-5419b976624b@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 20 May 2019 10:45:57 -0700 (PDT)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hSmMS-00BZxo-Vh
Subject: Re: [tipc-discussion] [PATCH v4] tipc: fix modprobe tipc failed
 after switch order of device registration
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
Cc: sfr@canb.auug.org.au, willemdebruijn.kernel@gmail.com,
 netdev@vger.kernel.org, mingfangsen@huawei.com, linux-kernel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: hujunwei <hujunwei4@huawei.com>
Date: Mon, 20 May 2019 14:43:59 +0800

> From: Junwei Hu <hujunwei4@huawei.com>
> 
> Error message printed:
> modprobe: ERROR: could not insert 'tipc': Address family not
> supported by protocol.
> when modprobe tipc after the following patch: switch order of
> device registration, commit 7e27e8d6130c
> ("tipc: switch order of device registration to fix a crash")
> 
> Because sock_create_kern(net, AF_TIPC, ...) called by
> tipc_topsrv_create_listener() in the initialization process
> of tipc_init_net(), so tipc_socket_init() must be execute before that.
> Meanwhile, tipc_net_id need to be initialized when sock_create()
> called, and tipc_socket_init() is no need to be called for each namespace.
> 
> I add a variable tipc_topsrv_net_ops, and split the
> register_pernet_subsys() of tipc into two parts, and split
> tipc_socket_init() with initialization of pernet params.
> 
> By the way, I fixed resources rollback error when tipc_bcast_init()
> failed in tipc_init_net().
> 
> Fixes: 7e27e8d6130c ("tipc: switch order of device registration to fix a crash")
> Signed-off-by: Junwei Hu <hujunwei4@huawei.com>
> Reported-by: Wang Wang <wangwang2@huawei.com>
> Reported-by: syzbot+1e8114b61079bfe9cbc5@syzkaller.appspotmail.com
> Reviewed-by: Kang Zhou <zhoukang7@huawei.com>
> Reviewed-by: Suanming Mou <mousuanming@huawei.com>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
