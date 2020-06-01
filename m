Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EA51EB1C3
	for <lists+tipc-discussion@lfdr.de>; Tue,  2 Jun 2020 00:35:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jft1q-0002HI-Rb; Mon, 01 Jun 2020 22:35:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1jft1p-0002Gt-Lc
 for tipc-discussion@lists.sourceforge.net; Mon, 01 Jun 2020 22:35:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nrUtWBT7pCZitUQ0qdxKM2P7XtcZ5M/mfaWWUFK8KcI=; b=V4D+vvBAPhrqJvGm/le4CNIxWa
 mjx8qD3aL5K25exWoCPfh6DjmOAbdIKritIvMumtaLh+H4hdLwFC/SnJFQjtxRZVNOmidl+nqWwmS
 rE/TQ0Y4X1FWBbOat54MuN9NVuIXBpuDq0Sld0wswr9tcwyXAG7z+/T8HlyCs8MQztOg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nrUtWBT7pCZitUQ0qdxKM2P7XtcZ5M/mfaWWUFK8KcI=; b=JlH04aJv98t2EN5YKxwLU/68Og
 yLzO7mviB3iVmZExrmYKwNboWgaiu8xoudQ/kK6e1HNbhhuM9oJA1XlLjnLLyTsSC66ZAlocn3IQ4
 iC2+hyatmNrG1cEqe1SJUZIsz6wEmmLTgOrFjpdHvDCOgvID37uyHNTsb1zdQaM0Pihs=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jft1o-0019Rt-76
 for tipc-discussion@lists.sourceforge.net; Mon, 01 Jun 2020 22:35:33 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 920E4120477C4;
 Mon,  1 Jun 2020 15:35:25 -0700 (PDT)
Date: Mon, 01 Jun 2020 15:35:22 -0700 (PDT)
Message-Id: <20200601.153522.370467432528991344.davem@davemloft.net>
To: yuehaibing@huawei.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200528143407.56196-1-yuehaibing@huawei.com>
References: <20200528143407.56196-1-yuehaibing@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 01 Jun 2020 15:35:25 -0700 (PDT)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jft1o-0019Rt-76
Subject: Re: [tipc-discussion] [PATCH net-next] tipc: Fix NULL pointer
 dereference in __tipc_sendstream()
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

From: YueHaibing <yuehaibing@huawei.com>
Date: Thu, 28 May 2020 22:34:07 +0800

> tipc_sendstream() may send zero length packet, then tipc_msg_append()
> do not alloc skb, skb_peek_tail() will get NULL, msg_set_ack_required
> will trigger NULL pointer dereference.
> 
> Reported-by: syzbot+8eac6d030e7807c21d32@syzkaller.appspotmail.com
> Fixes: 0a3e060f340d ("tipc: add test for Nagle algorithm effectiveness")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

I spent some time reading this a few times and the Fixes: commit and
this change looks ok to me so I'm just going to apply this.

Thanks.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
