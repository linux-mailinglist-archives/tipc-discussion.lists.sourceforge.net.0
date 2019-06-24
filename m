Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A00DF51940
	for <lists+tipc-discussion@lfdr.de>; Mon, 24 Jun 2019 19:04:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hfSOW-0003dS-FA; Mon, 24 Jun 2019 17:04:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hfSOV-0003dF-Ak
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 17:04:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xafCJ6+VsdSyG8N5cOhAEvZKMWlB16ecDy/vNwAJkOc=; b=MK0CD2IKPSHGhVl3eXlVSM5yIu
 XkOTiIKHPMuxxO8ObBnz8R+ao/snXmqeW3XgCTpJHc/z0LM84MMJq0FuBjZQnXe+aZUUl4iMWhJIO
 nhCGbq4mm9KzwTdSVtJFuexm5G+z4PRGZc4A4qNDMPXaJmUztF7WHvTICp9eWPOvdOCE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xafCJ6+VsdSyG8N5cOhAEvZKMWlB16ecDy/vNwAJkOc=; b=TqZZDay8Eg1W4n63maCfEsetHI
 pxTHvolEDSQuPSQHc4SYsOm9e3ip1DONoceNCOAJV08+2ACqoUAfcY8e2JtD3ctDLdMVLa5wt/9LF
 p/ma0nP6Hzh8srP/dKJlO3a+P04R3XMoDO/S7DmkGuKLP5mLsMyotx8+1dfWehssir8U=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hfSOc-00CKlu-WD
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 17:04:48 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id DB7DC15061484;
 Mon, 24 Jun 2019 10:04:37 -0700 (PDT)
Date: Mon, 24 Jun 2019 10:04:35 -0700 (PDT)
Message-Id: <20190624.100435.1535171955176516330.davem@davemloft.net>
To: lucien.xin@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <58c46f0c73a4c1aea970e52de69188e2dd20d3b4.1561393699.git.lucien.xin@gmail.com>
References: <58c46f0c73a4c1aea970e52de69188e2dd20d3b4.1561393699.git.lucien.xin@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 24 Jun 2019 10:04:38 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hfSOc-00CKlu-WD
Subject: Re: [tipc-discussion] [PATCHv2 net] tipc: check msg->req data len
 in tipc_nl_compat_bearer_disable
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
 edumazet@google.com, tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Xin Long <lucien.xin@gmail.com>
Date: Tue, 25 Jun 2019 00:28:19 +0800

> This patch is to fix an uninit-value issue, reported by syzbot:
 ...
> TLV_GET_DATA_LEN() may return a negtive int value, which will be
> used as size_t (becoming a big unsigned long) passed into memchr,
> cause this issue.
> 
> Similar to what it does in tipc_nl_compat_bearer_enable(), this
> fix is to return -EINVAL when TLV_GET_DATA_LEN() is negtive in
> tipc_nl_compat_bearer_disable(), as well as in
> tipc_nl_compat_link_stat_dump() and tipc_nl_compat_link_reset_stats().
> 
> v1->v2:
>   - add the missing Fixes tags per Eric's request.
> 
> Fixes: 0762216c0ad2 ("tipc: fix uninit-value in tipc_nl_compat_bearer_enable")
> Fixes: 8b66fee7f8ee ("tipc: fix uninit-value in tipc_nl_compat_link_reset_stats")
> Reported-by: syzbot+30eaa8bf392f7fafffaf@syzkaller.appspotmail.com
> Signed-off-by: Xin Long <lucien.xin@gmail.com>

Applied and queued up for -stable, thanks.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
