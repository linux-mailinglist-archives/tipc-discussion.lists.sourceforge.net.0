Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B86B478CA
	for <lists+tipc-discussion@lfdr.de>; Mon, 17 Jun 2019 05:43:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hciXo-0001D6-SV; Mon, 17 Jun 2019 03:42:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hciXn-0001Cm-3t
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Jun 2019 03:42:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vtiOdAQWTM04qE+4Q8WruSlac/6PI5zT8xrEws/lLb0=; b=lCPxznQMTI2cvp9YecEyVk0kgj
 AYTgENlizNHB2+xrFhRIH0Dw+39Gmy5e/vl+oczBXxojcINd6TvkZPeTf5nGdG7sZUr8DozppNl/k
 Hzdf9ICe+HogtF2HDJvsOzFki1BeM8ZU+KKpn5S4mNumu9Y2aL7ynggIMcku/w3NUdbU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vtiOdAQWTM04qE+4Q8WruSlac/6PI5zT8xrEws/lLb0=; b=VqFfHOW2os3PYpsQq3rd9eZTSj
 5YyI3d7enVEPaSlrMv9C6icYjul5dAXw3LqjRWEaGVBzXy+2+Zl8Zm2H+bhqk3FKtBfGl2DjACoU3
 zUe+R8DRCk/qSo8Fw8g/hle8N+RP9I7YkAX8YuSOGpLJTrFVIFEbFUFKnlzILruax9aM=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hciXk-000ALZ-8H
 for tipc-discussion@lists.sourceforge.net; Mon, 17 Jun 2019 03:42:54 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 1C0CD14DB0333;
 Sun, 16 Jun 2019 20:42:43 -0700 (PDT)
Date: Sun, 16 Jun 2019 20:42:40 -0700 (PDT)
Message-Id: <20190616.204240.717937021550114907.davem@davemloft.net>
To: lucien.xin@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <14ff2b79da7b9098fbff2919f0bc5a1afa33fe32.1560677047.git.lucien.xin@gmail.com>
References: <14ff2b79da7b9098fbff2919f0bc5a1afa33fe32.1560677047.git.lucien.xin@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 16 Jun 2019 20:42:43 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hciXk-000ALZ-8H
Subject: Re: [tipc-discussion] [PATCH net] tipc: purge deferredq list for
 each grp member in tipc_group_delete
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
Cc: netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Xin Long <lucien.xin@gmail.com>
Date: Sun, 16 Jun 2019 17:24:07 +0800

> Syzbot reported a memleak caused by grp members' deferredq list not
> purged when the grp is be deleted.
> 
> The issue occurs when more(msg_grp_bc_seqno(hdr), m->bc_rcv_nxt) in
> tipc_group_filter_msg() and the skb will stay in deferredq.
> 
> So fix it by calling __skb_queue_purge for each member's deferredq
> in tipc_group_delete() when a tipc sk leaves the grp.
> 
> Fixes: b87a5ea31c93 ("tipc: guarantee group unicast doesn't bypass group broadcast")
> Reported-by: syzbot+78fbe679c8ca8d264a8d@syzkaller.appspotmail.com
> Signed-off-by: Xin Long <lucien.xin@gmail.com>

Applied, thanks.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
