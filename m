Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA2977331
	for <lists+tipc-discussion@lfdr.de>; Fri, 26 Jul 2019 23:05:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hr7P1-0007ee-UY; Fri, 26 Jul 2019 21:05:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hr7P0-0007eR-OZ
 for tipc-discussion@lists.sourceforge.net; Fri, 26 Jul 2019 21:05:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+XBJBy8z2wZEHI93duA/brXOqyioAd+YzeFvd3PyF5g=; b=a0aZPyVleW2/0NToQpBEJID+Ds
 bQGBJiYDWr5ChDoEBSRL8lKnE3c9zGA0fZrJySDvjvL1RhTgLhaLJnA7xKRsH3jb/ZNbN/z2RfSnz
 s+u93JlNWIphCMKhmY/HkuSlaGKHfwxwUfVokSBgic7fXEI10hlY19UT9BCYSadLY2zA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+XBJBy8z2wZEHI93duA/brXOqyioAd+YzeFvd3PyF5g=; b=kh89dmsG3b8lmSIV/0xEA4vfSF
 NUcwEcPQAje5wOc2iX8rDishOhCr2YqRL1wQMZTM7cuKSNIjQueUb+v68IMVhmFpVievdKQKG9JdF
 ULr7Q6uG7WUAW2wORx1AQLOl72oj1Y+q4sHRQi5bxWDyA5HeFJDB/+gF3mFtoZJ33XsY=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hr7Ox-00Ha97-0B
 for tipc-discussion@lists.sourceforge.net; Fri, 26 Jul 2019 21:05:22 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 0A54B12665368;
 Fri, 26 Jul 2019 14:05:10 -0700 (PDT)
Date: Fri, 26 Jul 2019 14:05:09 -0700 (PDT)
Message-Id: <20190726.140509.821828313930772794.davem@davemloft.net>
To: baijiaju1990@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190725092021.15855-1-baijiaju1990@gmail.com>
References: <20190725092021.15855-1-baijiaju1990@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 26 Jul 2019 14:05:10 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hr7Ox-00Ha97-0B
Subject: Re: [tipc-discussion] [PATCH] net: tipc: Fix a possible
 null-pointer dereference in tipc_publ_purge()
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
Cc: tipc-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Jia-Ju Bai <baijiaju1990@gmail.com>
Date: Thu, 25 Jul 2019 17:20:21 +0800

> @@ -223,7 +223,8 @@ static void tipc_publ_purge(struct net *net, struct publication *publ, u32 addr)
>  		       publ->key);
>  	}
>  
> -	kfree_rcu(p, rcu);
> +	if (p)
> +		kfree_rcu(p, rcu);

Please fix your automated tools if that is what found this, because as
others have nodes kfree_rcu() can take a NULL pointer argument just
fine.

Thank you.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
