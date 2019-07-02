Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 017E55D800
	for <lists+tipc-discussion@lfdr.de>; Wed,  3 Jul 2019 00:08:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hiQwe-0006SF-AL; Tue, 02 Jul 2019 22:08:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hiQwc-0006Rw-VZ
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Jul 2019 22:08:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G2J0jMsKiLazsszfPyq42UxEEK6s5YH3VD77vUDslkY=; b=hj7xlE1oWI/q694khmwTnfNPfI
 A0FDEB9Hf1SxoUTyhurywbqXoMgIfUfSnmYQFhINMRDXuC4ZsnWhZ57S7R3TndNZwSivniTK/7TEw
 LYnhs8hBpQrJuLW7JaVv0/uLE38GORTkpqoHc1W139VjsxEY3aM/RgG4082FQTjIzumc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G2J0jMsKiLazsszfPyq42UxEEK6s5YH3VD77vUDslkY=; b=HEpYvKO2BSOMtH/fUyU6uJV00o
 2xrmtDV9JdMPR7V64RWDmtBpyOI3bUTIq1LIYE7dqVVR6hA/SZmUq+NwQo0WxGJw0bxljHzPLREGx
 tnmZcKgbMYC/QpLdqqANiVhA4kVbmmGHF2SqKQ840rruc+p1ihFpEvf7rVRAGOTqifio=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hiQwr-003MaT-3a
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Jul 2019 22:08:26 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 539BB13FE98F8;
 Tue,  2 Jul 2019 15:08:15 -0700 (PDT)
Date: Tue, 02 Jul 2019 15:08:11 -0700 (PDT)
Message-Id: <20190702.150811.1940085234903099096.davem@davemloft.net>
To: lucien.xin@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <07e0518ac689f5919890a38634df38edf95d34a1.1562000095.git.lucien.xin@gmail.com>
References: <07e0518ac689f5919890a38634df38edf95d34a1.1562000095.git.lucien.xin@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 02 Jul 2019 15:08:15 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hiQwr-003MaT-3a
Subject: Re: [tipc-discussion] [PATCH net-next] tipc: use rcu dereference
 functions properly
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
Cc: netdev@vger.kernel.org, tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Xin Long <lucien.xin@gmail.com>
Date: Tue,  2 Jul 2019 00:54:55 +0800

> For these places are protected by rcu_read_lock, we change from
> rcu_dereference_rtnl to rcu_dereference, as there is no need to
> check if rtnl lock is held.
> 
> For these places are protected by rtnl_lock, we change from
> rcu_dereference_rtnl to rtnl_dereference/rcu_dereference_protected,
> as no extra memory barriers are needed under rtnl_lock() which also
> protects tn->bearer_list[] and dev->tipc_ptr/b->media_ptr updating.
> 
> rcu_dereference_rtnl will be only used in the places where it could
> be under rcu_read_lock or rtnl_lock.
> 
> Signed-off-by: Xin Long <lucien.xin@gmail.com>

In the cases where RTNL is held, even if rcu_read_lock() is also taken,
we should use rtnl_dereference() because that avoids the READ_ONCE().


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
