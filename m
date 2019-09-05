Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7EEA9C7A
	for <lists+tipc-discussion@lfdr.de>; Thu,  5 Sep 2019 10:00:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1i5mgS-00061C-5l; Thu, 05 Sep 2019 08:00:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1i5mgQ-000615-BI
 for tipc-discussion@lists.sourceforge.net; Thu, 05 Sep 2019 07:59:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k8vdMIQUSMW+NMWwhw1mTXRj14/bfkhVky49yxcmWfI=; b=gTGeF2Ltm+E8KLadC3SOP1WG4N
 tcW3aVkT44HOgTeX1l40NPkUIxZbWkIE3v9XsM/xhPrNGkUMovx3XHmD7jfvgP33ChRXmS8585qrB
 yR2zDosb5jfwVuSM3lVwK6Tv3xeSucAmYOw0+jvf2uDTQ+O6AIy//AQW9vMud+iH5ktI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=k8vdMIQUSMW+NMWwhw1mTXRj14/bfkhVky49yxcmWfI=; b=DEObx5YxYAVhQpbf35dmWaX7PW
 KYcdUoxfppmI+yfQqe5Otw9aV31RD+RCxCMRAWAITWVibG6GD2/ikYhB3Wju/i4QVCYM7BZtFao2L
 QQb1Shh5DqWI0D7UjOFczH/XajzeaeQ5ArpYRQ+zsf3gbJ+72Hkbd7q5P/OWY1NHFL/8=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i5mgO-00HTG7-9n
 for tipc-discussion@lists.sourceforge.net; Thu, 05 Sep 2019 07:59:58 +0000
Received: from localhost (unknown [62.21.130.100])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 855C41538519F;
 Thu,  5 Sep 2019 00:59:46 -0700 (PDT)
Date: Thu, 05 Sep 2019 00:59:45 -0700 (PDT)
Message-Id: <20190905.005945.484007088561769938.davem@davemloft.net>
To: lucien.xin@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <f42a6270d821baf1445b5fa40dc201f7c9c5ebd0.1567504392.git.lucien.xin@gmail.com>
References: <f42a6270d821baf1445b5fa40dc201f7c9c5ebd0.1567504392.git.lucien.xin@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 05 Sep 2019 00:59:47 -0700 (PDT)
X-Spam-Score: 3.6 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [62.21.130.100 listed in zen.spamhaus.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1i5mgO-00HTG7-9n
Subject: Re: [tipc-discussion] [PATCH net] tipc: add NULL pointer check
 before calling kfree_rcu
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
Date: Tue,  3 Sep 2019 17:53:12 +0800

> Unlike kfree(p), kfree_rcu(p, rcu) won't do NULL pointer check. When
> tipc_nametbl_remove_publ returns NULL, the panic below happens:
 ...
> Fixes: 97ede29e80ee ("tipc: convert name table read-write lock to RCU")
> Reported-by: Li Shuang <shuali@redhat.com>
> Signed-off-by: Xin Long <lucien.xin@gmail.com>

Applied and queued up for -stable, thanks.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
