Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8073B2571C3
	for <lists+tipc-discussion@lfdr.de>; Mon, 31 Aug 2020 04:14:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kCZLA-0004oS-9j; Mon, 31 Aug 2020 02:14:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1kCZL9-0004oL-3r
 for tipc-discussion@lists.sourceforge.net; Mon, 31 Aug 2020 02:14:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Awqfth5mvLjdlnFkWJy0RwfOP9hQdKyXKyTs9TADPQk=; b=F6525+defgM6f8/I14YkkM2TrB
 05XukWdmUVd95tGzQYG7DwmVeQToYPrztnvot+laRZNZqOA5QDr+ksXJZLRdEeXA0us583axX2Xn/
 CJ+mDUMwkCs/8vgzcGJTuXtQoW/3XG1AH/BhUwT8Y+hIxjjIOIHqCNvvtWFCbcRERRkw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Awqfth5mvLjdlnFkWJy0RwfOP9hQdKyXKyTs9TADPQk=; b=jEyy4qlXmy4A7ODyOfgWfRWEwT
 kqPBw+KVQdJisWl5OhPp3iElFbMpEHCkLH5gu2cGptMFegugqOjArlSDeoubVA26qRZJzqsIuTi0D
 HKbSYiWTFg53CnP6C7xp/CQoWakmx3n0aIV77fF0FZ6Fm16Rne6ALf0ELnSNZjRRl1kw=;
Received: from [23.128.96.9] (helo=shards.monkeyblade.net)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kCZL5-0060aT-6s
 for tipc-discussion@lists.sourceforge.net; Mon, 31 Aug 2020 02:14:35 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 6111A13673751;
 Sun, 30 Aug 2020 18:57:27 -0700 (PDT)
Date: Sun, 30 Aug 2020 19:14:11 -0700 (PDT)
Message-Id: <20200830.191411.329412155086247494.davem@davemloft.net>
To: tuong.t.lien@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200829193755.9429-1-tuong.t.lien@dektech.com.au>
References: <20200829193755.9429-1-tuong.t.lien@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 30 Aug 2020 18:57:27 -0700 (PDT)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1kCZL5-0060aT-6s
Subject: Re: [tipc-discussion] [net] tipc: fix using smp_processor_id() in
 preemptible
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

From: Tuong Lien <tuong.t.lien@dektech.com.au>
Date: Sun, 30 Aug 2020 02:37:55 +0700

> The 'this_cpu_ptr()' is used to obtain the AEAD key' TFM on the current
> CPU for encryption, however the execution can be preemptible since it's
> actually user-space context, so the 'using smp_processor_id() in
> preemptible' has been observed.
> 
> We fix the issue by using the 'get/put_cpu_ptr()' API which consists of
> a 'preempt_disable()' instead.
> 
> Fixes: fc1b6d6de220 ("tipc: introduce TIPC encryption & authentication")
> Acked-by: Jon Maloy <jmaloy@redhat.com>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>

Applied and queued up for -stable.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
