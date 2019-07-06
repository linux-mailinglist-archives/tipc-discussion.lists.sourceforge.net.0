Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB286131B
	for <lists+tipc-discussion@lfdr.de>; Sun,  7 Jul 2019 00:16:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hjsyC-0006MQ-JE; Sat, 06 Jul 2019 22:15:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hjsyA-0006MI-VZ
 for tipc-discussion@lists.sourceforge.net; Sat, 06 Jul 2019 22:15:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=twa8fiP76uMqn0mLqPdOoww9QB5fOL16rs4+o7PrlKM=; b=VWlipyElymbymo2qO6MPKpJUEb
 ds+kSeqa5fpUwRLgQC1ov+K5eubkZv1qepwdXqAPCL30bYmkCkv5BcLetzHPYRASqAropBNaHKJW0
 rlvUqBvHkgvDYdC9eMAjwhuzyaMoj7WsRRXeOGSxyIe7H0aidQA0F0rR9jnWX1Om+rPk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=twa8fiP76uMqn0mLqPdOoww9QB5fOL16rs4+o7PrlKM=; b=DvGEKpGKR0rSsxW7IkLvtFh9mg
 WzmJaO7DhZ56hCF33WrzMEMXBaA5XfOdjADm46KRIYT/gxcJd0TCeS9NqXFnjoTLjGl6YTmggaLvl
 tii7+RhefyoJUpTgQSqVGrAut+DB9hPdQ2JpsXUKUxjD52ES1NcMQ7o6zjBmGzL9stdo=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hjsyJ-008Pb6-Ge
 for tipc-discussion@lists.sourceforge.net; Sat, 06 Jul 2019 22:15:59 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id A57C6151CBEC1;
 Sat,  6 Jul 2019 15:15:46 -0700 (PDT)
Date: Sat, 06 Jul 2019 15:15:44 -0700 (PDT)
Message-Id: <20190706.151544.2015985674047795584.davem@davemloft.net>
To: lucien.xin@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <CADvbK_eDnUMSaoT65hco2PF5-f1PO=CKBeMPz3sTRZvg5qKGVA@mail.gmail.com>
References: <20190702.150811.1940085234903099096.davem@davemloft.net>
 <CADvbK_emyKTg8=ye8n2ZTBx0QFK9gPL02aVDfn44DuyUTP-ofw@mail.gmail.com>
 <CADvbK_eDnUMSaoT65hco2PF5-f1PO=CKBeMPz3sTRZvg5qKGVA@mail.gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 06 Jul 2019 15:15:46 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hjsyJ-008Pb6-Ge
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
Date: Sat, 6 Jul 2019 14:48:48 +0800

> Hi, David, I saw this patch in "Changes Requested".

I just put it back to Under Review, thanks.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
