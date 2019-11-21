Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8F1104D43
	for <lists+tipc-discussion@lfdr.de>; Thu, 21 Nov 2019 09:07:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iXhVJ-0001T8-N6; Thu, 21 Nov 2019 08:07:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1iXhVI-0001T0-1Y
 for tipc-discussion@lists.sourceforge.net; Thu, 21 Nov 2019 08:07:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hJ8eCFakRYYG/HL9E4eh3uF2gXlRWx67EcMh9lsRHRw=; b=W3YpltwgQ566hnceammtRyGUNh
 hdKjHndRXrA/jQXNsAXehJSV9ZsKn56M8OHJ+YiTDowiJ/8pT/P+DC83Y0FQD39E2n3m/7PWUN55S
 VFiMrUcOYPUmfKxnFd43r2349+Fb9zdrZHOuMN7b/1gaiG6QW1WVbvCrREQzF5EiSyh4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hJ8eCFakRYYG/HL9E4eh3uF2gXlRWx67EcMh9lsRHRw=; b=OWiutOWFOwBGAEgPrKM+h8qTmX
 /6Zn1fYeNxcn+/hFtVX1Wi4R8JTlbIORjgbV4fyer1MLhjVn8tDL/FUfdfTkZX/UokdkKG2jDkoTq
 iifxuGyDjvFDoLbNEpwFcohpKiiNtlvmCK7uxOFZK6llH3ohFbeMWxE2I2cJKj6Fmr3w=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iXhVF-00FTVB-Kn
 for tipc-discussion@lists.sourceforge.net; Thu, 21 Nov 2019 08:07:51 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B227914F222C0;
 Thu, 21 Nov 2019 00:07:40 -0800 (PST)
Date: Thu, 21 Nov 2019 00:07:38 -0800 (PST)
Message-Id: <20191121.000738.2137637687912174348.davem@davemloft.net>
To: tuong.t.lien@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <00f001d5a039$7a0d7520$6e285f60$@dektech.com.au>
References: <20191121025325.15366-1-tuong.t.lien@dektech.com.au>
 <20191120.221357.2118936276393168423.davem@davemloft.net>
 <00f001d5a039$7a0d7520$6e285f60$@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 21 Nov 2019 00:07:40 -0800 (PST)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iXhVF-00FTVB-Kn
Subject: Re: [tipc-discussion] [net-next v2] tipc: support in-order name
 publication events
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
Cc: tipc-discussion@lists.sourceforge.net, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: "Tuong Lien Tong" <tuong.t.lien@dektech.com.au>
Date: Thu, 21 Nov 2019 14:01:17 +0700

> Hi David,
> 
> The fact is we still want to keep it with that explicit meaning, so make the
> code easy to understand. Yes, the 'time_after32()' or another macro can give
> the same result but makes no sense in this particular scenario. Otherwise,
> do you like something such as:
> 
> #define publication_after(...) time_after32(...)

Yes, that's fine.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
