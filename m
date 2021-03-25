Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC2B348753
	for <lists+tipc-discussion@lfdr.de>; Thu, 25 Mar 2021 04:08:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lPGLo-0004lP-Ti; Thu, 25 Mar 2021 03:08:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dsahern@gmail.com>) id 1lPGLn-0004lC-LY
 for tipc-discussion@lists.sourceforge.net; Thu, 25 Mar 2021 03:07:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F6Gq7ub5CHHz5oZQUrfFZDXZwcJC7EfUjmiAYCq2Jfs=; b=egp3VGG2S693TC8EEi5r9zk6uv
 EDwFNebtizpWJthqKzoA2FwuyYOzUAwVlCK24i5PqXlZlC/V8mjG5oPudEZM69twloyqpFOTep8Wo
 tDnH9/WFvaGyLOkyVv6mA9AJMlkmmFhLhGPFZLF3ScGPZ3Y38AjZwruhewuToCKZvAxw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=F6Gq7ub5CHHz5oZQUrfFZDXZwcJC7EfUjmiAYCq2Jfs=; b=bckDA+EuYlZ9ew7S3N9NQHfCJ3
 AxEA5UkVJzVhYPxvUzojm1efykjtj3klmEMVZzf531OlSAgBe8cwcDzYqAEo5NEP8sfeeiRj0kmEe
 HUHTq1q9XHTzCmlHkx9IyTe7gxrFdlVKoeBhebhhRKqCP981LTgPZoNGYQIEmEm5pQdQ=;
Received: from mail-oi1-f171.google.com ([209.85.167.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lPGLe-0080d9-5M
 for tipc-discussion@lists.sourceforge.net; Thu, 25 Mar 2021 03:07:59 +0000
Received: by mail-oi1-f171.google.com with SMTP id w70so761953oie.0
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 24 Mar 2021 20:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=F6Gq7ub5CHHz5oZQUrfFZDXZwcJC7EfUjmiAYCq2Jfs=;
 b=k4xBY/yExPTqNovfOuiZLHcAwwchB7lFnEZiF9XZTkngVxNKHdyy1T1sz7XWRv+GfL
 bxJBTbjYBZQTxuFbw7g01KhXMvFqtw1sMDrnYp+blls0P8O7oi/L7DqBarwXJlhNOAz1
 m94aeJRNG0BTeXH2lQNOIuUP+yuYpUy9o6RPiInrb0t51+fZ8U2t4g4bBwp9FnNDSxfB
 jHVrnPQiwb6UfAhLzeuHvZFMR4oGJ0+VkbIzqMnQwutHLgvsDzYF1cmMRNdxpTqAt8Qh
 6lHgTIzqXB3PdqkJEzVVJjiA6qq0mMkr8J9Ky8j/Kb9VfZQBMcFIG4kkYyxW93TxdG2Z
 4iqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=F6Gq7ub5CHHz5oZQUrfFZDXZwcJC7EfUjmiAYCq2Jfs=;
 b=mxG42DJekXcn5+c6i6bxhs46hPUoRphhkGKdpuTc5v9k37vMHNmHmrCpzE3Ht8E+1y
 il7LrMKIa/LHLh+t5Krm8AufyGphX9hdy2RSyDZT2DOT15YwDP16jR4EfU+caO6cbn4u
 mkGgv1TpNlTIhvITJ2IbFdzSIrpBlIbtHlIf7QXymOGAgOHg9G9XBBpb1bJnQzrAa5lj
 2khRAzlWVWz3sRQYubfvxRMTUN5nohjfA1DUjakudaXWzn+KRxlklVi5TJ0JiKQAfPt5
 tWSfa6ZhtTluEhT6BHG4XJJAFvlxhOqZItKzItXZV1bfIM5/WoIQvEyYhGUcUMSNyXwP
 G+tw==
X-Gm-Message-State: AOAM533YCihNPjlwa0DCPjMD5WNYiL+O6vmleTeqfTqcbBhO4uKn/5Ji
 yUql7wNhpFmi+EfKPYmIw7A=
X-Google-Smtp-Source: ABdhPJzq7Gro/Nix2s1f9GImjqWGzJN24eSKv0fByyc7wfDuWPD7q4E+ZSfeHxSjpwTcVA9GHtrPbQ==
X-Received: by 2002:a05:6808:b3b:: with SMTP id
 t27mr4452083oij.131.1616641664581; 
 Wed, 24 Mar 2021 20:07:44 -0700 (PDT)
Received: from Davids-MacBook-Pro.local ([8.48.134.56])
 by smtp.googlemail.com with ESMTPSA id a16sm194234otk.62.2021.03.24.20.07.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 24 Mar 2021 20:07:44 -0700 (PDT)
To: Hoang Le <hoang.h.le@dektech.com.au>, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com, maloy@donjonn.com,
 ying.xue@windriver.com, tuan.a.vo@dektech.com.au,
 tung.q.nguyen@dektech.com.au
References: <20210325015653.7112-1-hoang.h.le@dektech.com.au>
From: David Ahern <dsahern@gmail.com>
Message-ID: <ec0824c4-1809-b934-e1ec-abe08e5b4f6e@gmail.com>
Date: Wed, 24 Mar 2021 21:07:40 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210325015653.7112-1-hoang.h.le@dektech.com.au>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dsahern[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.171 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.171 listed in wl.mailspike.net]
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lPGLe-0080d9-5M
Subject: Re: [tipc-discussion] [iproute2-next] tipc: add support for the
 netlink extack
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On 3/24/21 7:56 PM, Hoang Le wrote:
> Add support extack in tipc to dump the netlink extack error messages
> (i.e -EINVAL) sent from kernel.
> 
> Acked-by: Jon Maloy <jmaloy@redhat.com>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>  tipc/msg.c | 29 ++++++++++++++++++++++-------
>  1 file changed, 22 insertions(+), 7 deletions(-)
> 

tipc should be converted to use the library functions in lib/mnl_utils.c.



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
