Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CE4517BA
	for <lists+tipc-discussion@lfdr.de>; Mon, 24 Jun 2019 17:54:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hfRIL-0007co-Uw; Mon, 24 Jun 2019 15:54:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1hfRIK-0007cP-IG
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 15:54:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ocqLuWDHS3ozICzu7eGKasp4nYwHIWiIlGkf0Kji4ek=; b=RpBY+psRP0MHECsjmpt50LXtH9
 +CHt+wkDPOQ7SCJsZs2ETun5e7eHQx4igYGXrUbtaomWsOA97qTRjtHvsDWaF96znIAyyKRevAEoA
 3Y4uGFZ/fkyDSqGYEuTC24lJC5bJ6/k83fevXpDug8fOJFf+znZTVDXClAbbLBDrGPOM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ocqLuWDHS3ozICzu7eGKasp4nYwHIWiIlGkf0Kji4ek=; b=S82XyEQYZnktlSDDlQitaz01yY
 mWkdbaUW3NdyFCxZfHwyYZ0t+X9kNFeDyRncX7q94LC1LWULttMgiKfJjRSnpjggVaaBgoBUa09b1
 uD+9j4VUth89yLZOdrr9FuGuPufCrrJOKzQyk30DYKOQ2DrVtMbzQXKI0LYpQ9tgtm3Y=;
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hfRIS-00CEX6-7T
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 15:54:21 +0000
Received: by mail-wm1-f67.google.com with SMTP id f17so13915317wme.2
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 24 Jun 2019 08:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ocqLuWDHS3ozICzu7eGKasp4nYwHIWiIlGkf0Kji4ek=;
 b=PGPy072daP9mAZplfTg+HDXuP8RsOyDPaKsRdE+oTzwJnx/aolDTim03AK8mHx3s1x
 ATxYrarW8l8/cRX6i1w0W82jIEexSr1PIwshHQ3koYDu91/7YIQC/Zu8eXyp2O+ORhMt
 40akO6S2ayD4cfbfyaHaeiRqs4cO9CfgZWmwJ/sWvRc6rqQ5MVLmcuCFcRZ64gtRexih
 5jhB4gtF64JTUJ9gKoQL+8Y2uM5dJU+rV8lDnWCZPRikXwsVRayUARCo0vWHS31ybvF1
 Kq6VhQXNfS4xF/EWFT6P1zsi7d52P30vyuSjAexKuUzqjhMK+AQCxJADQC5IX9ShBQUH
 DHLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ocqLuWDHS3ozICzu7eGKasp4nYwHIWiIlGkf0Kji4ek=;
 b=HwMd7um3YB3JLe+PmCHGHP0Vukp+bbdGveUA19+R8Mn/roZ1WAWA7UiLNOSixNsGsx
 hpqB5Z+FRo9TeG/xvI+6FNsN1moCJcnTEfzc5Tp+P3/n021jvONKRQjxw8WLBIZncqKJ
 agUtpJtgnthNCvTGHJeuGGu7Zu3UkWZqLj2mucgeQHRT5qLiA35AVBza0V6+xFcAnpw8
 Ck1mJq0WAB5UWp/U7NBmjnqj1/G9zVD3YzUl/DPGqP4BBJoEkiuH69hCDDKfpyC2gZi7
 6jXz10XZF/EtWGHU/Ea5vYSmHH+OiZRyVuP4mfZSglHN5knQhIpBMVG0LjLtYZN0Jjfg
 c2cQ==
X-Gm-Message-State: APjAAAWaN2cVOMTxsh0FsoJ2/fTLWqogJfBu29zLJwgUzAEtFmxZ6ePZ
 EQd05kHPz/rdSeDIbLXg7cHe9SYV7JJmQrJ92qtl+Q==
X-Google-Smtp-Source: APXvYqwFNhIy64cJL+liPxA+Kbc4lBAHpvltNfQw9pfQ9+ZJBgL1RCCevzMIt0BXrWRzct1oQ5mM4lwrwVn2dhMYbTs=
X-Received: by 2002:a7b:cd15:: with SMTP id f21mr15604677wmj.99.1561391653743; 
 Mon, 24 Jun 2019 08:54:13 -0700 (PDT)
MIME-Version: 1.0
References: <a4f39065f0b1cb13da2159339c08d78cb61f88d9.1561363362.git.lucien.xin@gmail.com>
 <20190624.073517.1612706351643151777.davem@davemloft.net>
In-Reply-To: <20190624.073517.1612706351643151777.davem@davemloft.net>
From: Xin Long <lucien.xin@gmail.com>
Date: Mon, 24 Jun 2019 23:54:02 +0800
Message-ID: <CADvbK_dcOYbFhiiseoAou_CAELLbta585S=g2jZ249ftO3h+2w@mail.gmail.com>
To: David Miller <davem@davemloft.net>
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hfRIS-00CEX6-7T
Subject: Re: [tipc-discussion] [PATCH net] tipc: remove the unnecessary
 msg->req check from tipc_nl_compat_bearer_set
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
Cc: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Mon, Jun 24, 2019 at 10:35 PM David Miller <davem@davemloft.net> wrote:
>
> From: Xin Long <lucien.xin@gmail.com>
> Date: Mon, 24 Jun 2019 16:02:42 +0800
>
> > tipc_nl_compat_bearer_set() is only called by tipc_nl_compat_link_set()
> > which already does the check for msg->req check, so remove it from
> > tipc_nl_compat_bearer_set(), and do the same in tipc_nl_compat_media_set().
> >
> > Signed-off-by: Xin Long <lucien.xin@gmail.com>
>
> Is this really appropriate as a fix for 'net'?  Seems more like net-next material
> to me.
kind of code fix, sure, you can apply it to net-next, no conflict.
do you need me to repost?


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
