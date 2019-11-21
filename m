Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 580BF104AEF
	for <lists+tipc-discussion@lfdr.de>; Thu, 21 Nov 2019 08:01:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iXgT6-0006vx-AU; Thu, 21 Nov 2019 07:01:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iXgT5-0006vm-Ck
 for tipc-discussion@lists.sourceforge.net; Thu, 21 Nov 2019 07:01:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7hAIXtqXyQXc0LkOh6cYF7vgfqUzd8mvVBHqXjXLN0Q=; b=QYhNnd5sTs9aBwbZLnpcq+wdG6
 JgKvAbMlMk+NOmNSZU8Hersr5J8rrh8yI7Poi/h5bPxMdNfGRB3LeRqbVCRQ3GZuABzZvKRrmRp9y
 2KEQ/t3OCQqwXOHhKFW8/dlyRO+4ZotPXQHu0CYs8RXWUyGMB3LJ0YHypGtWgzqRv4Dw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7hAIXtqXyQXc0LkOh6cYF7vgfqUzd8mvVBHqXjXLN0Q=; b=lHHjzLfpG5nP/iv9pYmqJA7SXk
 +oHySUBWKB2BJUQTBVkXTm0atb42aA8PtSmTIbi7iHdgOafWqTBsd80u31kNiF9fvQ7ZkhE+7CFSZ
 kYxkEjLmhQskCYOZrYyJnnXfZcVBxexI95qkfGpYETNsp+Z4XROH6nsL3Hf9CiuUZ9Qg=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iXgT2-008LJ0-03
 for tipc-discussion@lists.sourceforge.net; Thu, 21 Nov 2019 07:01:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 0166D4AF62;
 Thu, 21 Nov 2019 18:01:21 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1574319680; bh=Rqenvs+f3rzrhd
 vVd/Oa3kTQjo/RfdTFo+twqYcf8n8=; b=nw4ljZ0Ve2V9Sd8MbY2KcM9cNRMk3B
 v9EWSuAyrk3TVjNVO3ie12W5FBj1kvWKDzpIfQdpWEDsnkallqVYHWtFiqRqv3Ql
 oEXxZh2D/Kz59h6/Tw0uJfcyIGBDnv9nSc3bmlyXEKC8upCy0V9Vj9eqJELwMK8+
 LNi8M1PTBT4OI=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id UoCLqFvz8cCf; Thu, 21 Nov 2019 18:01:20 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 6272C4AF67;
 Thu, 21 Nov 2019 18:01:20 +1100 (AEDT)
Received: from VNLAP288VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id E1F8D4AF62;
 Thu, 21 Nov 2019 18:01:18 +1100 (AEDT)
From: "Tuong Lien Tong" <tuong.t.lien@dektech.com.au>
To: "'David Miller'" <davem@davemloft.net>
References: <20191121025325.15366-1-tuong.t.lien@dektech.com.au>
 <20191120.221357.2118936276393168423.davem@davemloft.net>
In-Reply-To: <20191120.221357.2118936276393168423.davem@davemloft.net>
Date: Thu, 21 Nov 2019 14:01:17 +0700
Message-ID: <00f001d5a039$7a0d7520$6e285f60$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQM1oHj4xz1xzoLoyExHyKnj+7tswgFeNPrxpMo906A=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iXgT2-008LJ0-03
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

Hi David,

The fact is we still want to keep it with that explicit meaning, so make the
code easy to understand. Yes, the 'time_after32()' or another macro can give
the same result but makes no sense in this particular scenario. Otherwise,
do you like something such as:

#define publication_after(...) time_after32(...)

BR/Tuong

-----Original Message-----
From: David Miller <davem@davemloft.net> 
Sent: Thursday, November 21, 2019 1:14 PM
To: tuong.t.lien@dektech.com.au
Cc: jon.maloy@ericsson.com; maloy@donjonn.com; ying.xue@windriver.com;
netdev@vger.kernel.org; tipc-discussion@lists.sourceforge.net
Subject: Re: [net-next v2] tipc: support in-order name publication events

From: Tuong Lien <tuong.t.lien@dektech.com.au>
Date: Thu, 21 Nov 2019 09:53:25 +0700

> +static inline int publication_after(struct publication *pa,
> +				    struct publication *pb)
> +{
> +	return ((int)(pb->id - pa->id) < 0);
> +}

Juse use time32_after() et al. instead of reinventing the same exact
code please.



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
